'article aside footer header hgroup nav section time'.replace(/\w+/g,function(n){document.createElement(n)})

jQuery(window).ready(function(){
	loadHideShowRegions();
	
	// initialize globals
	initLightbox();
	initContentFrameTabs();
	fadeMessages();
	autoFadeSuccess();
});

autoFadeSuccess = function(){
	setTimeout(function(){
		apex.jQuery("#uSuccessMessage").animate({
			height: 0, opacity: 0
		}, 1250, function(){
			apex.jQuery(this).remove();
		})
	},4000)
}
fadeMessages = function(){
	apex.jQuery(".uCloseMessage").removeAttr('onclick').click(function(){
		apex.jQuery(this).parents("section.uMessageRegion").fadeOut();
	})
}

loadHideShowRegions = function(){
	jQuery("a.uRegionControl").click(function(){
		link = jQuery(this)
		content = link.parents("div.uRegionHeading").next();
		link.toggleClass("uRegionCollapsed");
		if (content.css("display") == "block") {
			content.slideUp("fast","swing");
		} else {
			content.slideDown("fast","swing");
		}
	});
}

function detailedStatusListToolTip() {
 this.xOffset = 0; // x distance from mouse
 this.yOffset = 10; // y distance from mouse     
 
 jQuery("ul.detailedStatusList > li[class!=detailedStatusListLegend]").hover(    
   function(e) {
     var insideText = jQuery("section.detailedListTooltip",this).html()
     this.top = (e.pageY + yOffset); this.left = (e.pageX + xOffset);
     apex.jQuery('body').append('<div id="detailedStatusListToolTip">' + insideText + '</div>' );
           
     apex.jQuery('div#detailedStatusListToolTip').css("top", this.top+"px").css("left", this.left+"px").delay(500).fadeIn("fast");
     
   },
   function() {
     jQuery("div#detailedStatusListToolTip").fadeOut("false").remove();
   }
 ).mousemove(
   function(e) {
     this.top = (e.pageY + yOffset);
     this.left = (e.pageX + xOffset);
     jQuery("div#detailedStatusListToolTip").css("top", this.top+"px").css("left", this.left+"px");
   }
 )
}


// ========================
// = jQuery Modal Dialogs =
// ========================
var gBackground;
var gLightbox;

function initLightbox() {
	jQuery('body').append('<div id="modalBackground"></div>')
	gBackground = jQuery('#modalBackground')
	gBackground.click(function(){
	  gBackground.fadeOut(100);
	  closeModal()
	});
}

function closeModal()
{
	if (gLightbox) 
	{
	  gLightbox.removeClass("modalOn").hide();
	  gLightbox = '';
	}
	gBackground.fadeOut(100)
}

function openModal(p_div_id)
{
	gBackground.fadeIn(100);
	gLightbox = jQuery('#' + p_div_id);
	gLightbox.addClass('modalOn').fadeIn(100);
}

// =========================
// = Content Frame SubTabs =
// =========================
initContentFrameTabs = function(){
  apex.jQuery('div.uFrameRegionSelector > ul li a').click(function(e){
    e.preventDefault();
    link = apex.jQuery(this);
    subregions = link.parents('.uFrameMain').find('section.uHideShowRegion');
    link.parents("ul").find('li a').removeClass('active')
    if (link.hasClass('showAllLink')) {
		expandAllSections();
      // subregions.show();
      link.addClass('active');
    } else {
		expandSection(link.attr('id').substr(4));
      // subregions.hide();
      // apex.jQuery('#'+link.attr('id').substr(4)).show();
      link.addClass('active')
    }
  })
}


function expandSection(sid) {
  section = sid;
  all_sections = apex.jQuery('div.uFrameMain section.uHideShowRegion');
  
  all_sections.each(function(){
    current = apex.jQuery(this);
    if (current.attr('id') == section) {
      // SHOW
      current.find('div.uRegionContent').show();
      current.find('a.uRegionControl').removeClass('uRegionCollapsed');
    } else {
      //HIDE
      current.find('div.uRegionContent').hide();
      current.find('a.uRegionControl').addClass('uRegionCollapsed');
    }
  })
}

function expandAllSections() {
  apex.jQuery('div.uFrameMain section.uHideShowRegion').each(function(){
    current = apex.jQuery(this);
    current.find('div.uRegionContent').show();
    current.find('a.uRegionControl').removeClass('uRegionCollapsed'); 
  })
}