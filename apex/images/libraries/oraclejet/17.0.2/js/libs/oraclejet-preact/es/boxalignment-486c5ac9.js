/* @oracle/oraclejet-preact: undefined */
import { s as sizeToCSS } from './size-782ed57a.js';
import { c as coerceArray } from './arrayUtils-35a58161.js';
import './boxalignment.styles.css';
import { c as createSprinkles } from './vanilla-extract-sprinkles-createRuntimeSprinkles.esm-2d655d37.js';

var aligns = ['baseline','center','end','start','inherit','initial','stretch'];
var boxAlignment = createSprinkles({conditions:undefined,styles:{align:{mappings:['alignItems']},justify:{mappings:['justifyContent']},alignItems:{values:{baseline:{defaultClass:'boxalignment_alignItems_baseline__xnj0dy0'},center:{defaultClass:'boxalignment_alignItems_center__xnj0dy1'},end:{defaultClass:'boxalignment_alignItems_end__xnj0dy2'},start:{defaultClass:'boxalignment_alignItems_start__xnj0dy3'},inherit:{defaultClass:'boxalignment_alignItems_inherit__xnj0dy4'},initial:{defaultClass:'boxalignment_alignItems_initial__xnj0dy5'},stretch:{defaultClass:'boxalignment_alignItems_stretch__xnj0dy6'}}},justifyContent:{values:{left:{defaultClass:'boxalignment_justifyContent_left__xnj0dy7'},center:{defaultClass:'boxalignment_justifyContent_center__xnj0dy8'},right:{defaultClass:'boxalignment_justifyContent_right__xnj0dy9'},end:{defaultClass:'boxalignment_justifyContent_end__xnj0dya'},start:{defaultClass:'boxalignment_justifyContent_start__xnj0dyb'},inherit:{defaultClass:'boxalignment_justifyContent_inherit__xnj0dyc'},initial:{defaultClass:'boxalignment_justifyContent_initial__xnj0dyd'},around:{defaultClass:'boxalignment_justifyContent_around__xnj0dye'},between:{defaultClass:'boxalignment_justifyContent_between__xnj0dyf'},evenly:{defaultClass:'boxalignment_justifyContent_evenly__xnj0dyg'}}}}});
var justifies = ['left','center','right','end','start','inherit','initial','around','between','evenly'];

const boxAlignmentInterpolations = {
    align: ({ align }) => align === undefined
        ? {}
        : {
            class: boxAlignment({ align: align })
        },
    justify: ({ justify }) => justify === undefined
        ? {}
        : {
            class: boxAlignment({ justify })
        },
    // See https://developer.mozilla.org/en-US/docs/Web/CSS/gap
    gap: ({ gap }) => {
        if (gap === undefined) {
            return {};
        }
        else {
            const [rowSize, columnSize = rowSize] = coerceArray(gap);
            return { gap: `${sizeToCSS(rowSize)} ${sizeToCSS(columnSize)}` };
        }
    }
};

export { aligns as a, boxAlignmentInterpolations as b, justifies as j };
//# sourceMappingURL=boxalignment-486c5ac9.js.map
