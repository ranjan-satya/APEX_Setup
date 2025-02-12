/* @oracle/oraclejet-preact: undefined */
'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

// This file is auto-generated by @oracle/oraclejet-icu-l10n from src/resources/icu/bundle.json
// and should not be edited by hand. Update the JSON file and rerun the build to regenerate this content.
const bundle = {
    accAnnounceMovedKey: (p) => 'Премештено: ' + p['itemKey'] + ' ' + p['position'] + ' ' + p['referenceKey'] + '.',
    accCommandKey: () => 'Команда',
    accControlKey: () => 'Затвори',
    accPositionAfter: () => 'после',
    accPositionBefore: () => 'пре',
    accReorderInstructions: (p) => 'Притисните и задржите тастер ' +
        p['keyPressed'] +
        ' и тастере shift, па употребите тастере са стрелицама да бисте променили редослед.',
    calendarDateConverter_parseError: (p) => 'Унесите цео датум, овако: ' + p['dateExample'] + '.',
    calendarMonthConverter_parseError: (p) => 'Унесите месец и годину, овако: ' + p['dateExample'] + '.',
    chart_labelGroup: () => 'Група',
    chart_labelSeries: () => 'Серија',
    chart_labelValue: () => 'Вредност',
    checkboxSet_requiredMessageDetail: () => 'Обавезно',
    checkbox_requiredMessageDetail: () => 'Обавезно',
    close: () => 'Затвори',
    collection_noData: () => 'Нема података за приказ.',
    collection_selectAllRows: () => 'Изабери све редове',
    collection_selectRow: (p) => 'Изаберите ред ' + p['ROW_NAME'],
    collection_sortDisabled: () => 'Не може да се сортира',
    collection_sortEnabled: () => 'Може да се сортира',
    confirmation: () => 'Потврда',
    datePicker_currentDate: () => 'Тренутни датум',
    datePicker_goToToday: () => 'Иди на данас',
    datePicker_label: () => 'Бирач датума',
    datePicker_month: () => 'Месец',
    datePicker_months: () => 'Месеци',
    datePicker_next: () => 'Следеће',
    datePicker_nextDecade: () => 'Следећа деценија',
    datePicker_nextMonth: () => 'Следећи месец',
    datePicker_prev: () => 'Претходно',
    datePicker_prevDecade: () => 'Претходна деценија',
    datePicker_prevMonth: () => 'Претходни месец',
    datePicker_restricted: () => 'Ограничено',
    datePicker_selected: () => 'Изабрано',
    datePicker_today: () => 'данас',
    datePicker_weekNum: (p) => 'Недеља ' + p['NUM'],
    datePicker_weekNumColLabel: () => 'Број недеље',
    datePicker_year: () => 'Година',
    datePicker_years: () => 'Године',
    error: () => 'Грешка',
    expandableList_expandCollapseInstructionText: () => 'Користите стрелице да бисте проширивали и скупљали',
    expandableList_groupCollapse: () => 'Скупљено',
    expandableList_groupExpand: () => 'Проширено',
    filePicker_addFiles: () => 'Додај датотеке',
    filePicker_dropzonePrimaryText: () => 'Превуците и отпустите',
    filePicker_dropzoneSecondaryText: () => 'Изаберите датотеку или је отпустите овде',
    filePicker_dropzoneSecondaryTextMultiple: () => 'Изаберите или превуците датотеке овде',
    filePicker_multipleFileTypeUploadError: (p) => 'Не можете да отпремате датотеке типа: ' + p['fileTypes'],
    filePicker_singleFileUploadError: () => 'Отпремајте једну по једну датотеку',
    filePicker_singleTypeUploadError: (p) => 'Не можете да отпремате датотеке типа ' + p['fileType'],
    filePicker_unknownFileTypeUploadError: () => 'непознато',
    formControl_clear: () => 'Обриши',
    formControl_day: () => 'Дан',
    formControl_helpAvailable: () => 'Помоћ је доступна',
    formControl_hide: () => 'Сакриј',
    formControl_limitReached: (p) => 'Достигли сте ограничење од ' +
        ({
            one: new Intl.NumberFormat('sr').format(p['CHARACTER_LIMIT']) + ' знака',
            few: new Intl.NumberFormat('sr').format(p['CHARACTER_LIMIT']) + ' знака'
        }[new Intl.PluralRules('sr').select(p['CHARACTER_LIMIT'])] ||
            new Intl.NumberFormat('sr').format(p['CHARACTER_LIMIT']) + ' знакова') +
        '.',
    formControl_loading: () => 'Учитава се',
    formControl_maxLength: (p) => 'Не можете да унесете више од следећег броја знакова: ' + p['MAX_LENGTH'] + '.',
    formControl_maxLengthRemaining: (p) => 'Преостали број знакова је ' + p['CHARACTER_COUNT'] + '.',
    formControl_month: () => 'Месец',
    formControl_readOnly: () => 'Само за читање',
    formControl_requiredMessageDetail: () => 'Унесите вредност.',
    formControl_show: () => 'Прикажи',
    formControl_year: () => 'Година',
    gantt_labelDate: () => 'Датум',
    gantt_labelEnd: () => 'Крај',
    gantt_labelLabel: () => 'Ознака',
    gantt_labelRow: () => 'Ред',
    gantt_labelStart: () => 'Почетак',
    indexer_disabledLabel: (p) => p['SECTION'] + '. Нису пронађени одељци који се подударају.',
    indexer_keyboardInstructionText: () => "Притисните 'enter' да бисте изабрали вредност.",
    indexer_othersLabel: () => '#',
    indexer_separatorLabel: (p) => 'Између ' + p['FROM_SECTION'] + ' и ' + p['TO_SECTION'] + '.',
    indexer_touchInstructionText: () => 'Двапут додирните и задржите да бисте прешли на режим гестикулације, а затим превуците нагоре или надоле да бисте прилагодили вредност.',
    info: () => 'Информације',
    inputDateMask_date_cleared: () => 'Датум је обрисан',
    inputDateMask_dayPlaceholder: () => 'дд',
    inputDateMask_empty_segment: () => 'Празно',
    inputDateMask_monthPlaceholder: () => 'мм',
    inputDateMask_yearPlaceholder: () => 'гггг',
    inputDatePicker_dateRangeOverflowMessageDetail: (p) => 'Унесите датум који је ' + p['max'] + ' или ранији.',
    inputDatePicker_dateRangeUnderflowMessageDetail: (p) => 'Унесите датум који је ' + p['min'] + ' или каснији.',
    inputDatePicker_dateRestrictionMessageDetail: () => 'Унесите доступан датум.',
    inputDatePicker_instruction: () => 'Притисните табулатор да бисте приступили календару.',
    inputDatePicker_selectDate: () => 'Изаберите датум',
    inputMonthMask_dateRangeOverflowMessageDetail: (p) => 'Унесите месец и годину који су ' + p['max'] + ' или раније.',
    inputMonthMask_dateRangeUnderflowMessageDetail: (p) => 'Унесите месец и годину који су ' + p['min'] + ' или касније.',
    inputNumber_converterParseError: () => 'Унесите број.',
    inputNumber_decrease: () => 'Смањи',
    inputNumber_increase: () => 'Повећај',
    inputPassword_hidden: () => 'Лозинка је скривена',
    inputPassword_hide: () => 'Сакриј лозинку',
    inputPassword_show: () => 'Прикажи лозинку',
    inputSensitiveText_hidden: () => 'Осетљиви текст је скривен',
    list_msgFetchCompleted: () => 'Учитано',
    list_msgFetchingData: () => 'Учитава се',
    list_suggestion: () => 'Предлог',
    messageToast_allMessagesClosed: () => 'Све искачуће поруке су затворене.',
    message_close: () => 'Затвори',
    message_confirmation: () => 'Успешно',
    message_error: () => 'Грешка',
    message_info: () => 'Информације',
    message_navigationFromMessagesRegion: () => 'Прелазак на област за поруке. Притисните F6 да бисте се вратили на елемент који је пре тога био у фокусу.',
    message_navigationToMessagesRegion: () => 'Област за поруке садржи нове поруке. Притисните F6 да бисте прешли на регион најновије поруке.',
    message_warning: () => 'Упозорење',
    noData_message: () => 'Нема ставки за приказ',
    overflowItemLabel: () => 'Још картица',
    plural_separator: () => ', ',
    progressIndeterminate: () => 'У току',
    radio_helpForRadio: () => 'Помоћ за радио дугме',
    radio_requiredMessageDetail: () => 'Изаберите вредност.',
    selectMultiple_apply: () => 'Примени',
    selectMultiple_back: () => 'Назад',
    selectMultiple_countPlus: (p) => p['COUNT'] + '+',
    selectMultiple_highlightSelectedTagsInstructionText: () => 'Користите стрелице налево и надесно да бисте означили изабране вредности.',
    selectMultiple_removeSelectedTagInstructionText: () => 'Притисните тастере Backspace или Delete да бисте уклонили изабрану вредност.',
    selectMultiple_selectedValues: () => 'Изабране вредности',
    selectMultiple_showSelectedValues: () => 'Приказују се само изабране вредности.',
    selectMultiple_valuesSelected: (p) => 'Изабраних вредности: ' + p['VALUE_COUNT'] + ' .',
    select_addToList: () => 'Додај на листу',
    select_addToListAvailable: () => 'Додавање на листу је доступно',
    select_moreSearchOptions: () => 'Више опција претраживања',
    select_moreSearchOptionsAvailable: () => 'Више опција претраживања је доступно',
    select_noMatchesFound: () => 'Није пронађен ниједан погодак.',
    select_oneMatchFound: () => 'Пронађен је један резултат',
    select_requiredMessageDetail: () => 'Изаберите вредност.',
    select_sizeMatchesFound: (p) => 'Пронађених подударања: ' + p['TOTAL_SIZE'],
    select_sizeOrMoreMatchesFound: (p) => 'Пронађених подударања: ' + p['TOTAL_SIZE'] + ' или више',
    selectorAll_deselectAll: () => 'Опозови избор свега',
    selectorAll_selectAll: () => 'Изабери све',
    selector_selected: () => 'Поље за потврду је означено',
    selector_unselected: () => 'Поље за потврду није означено',
    tabBarNavigationList_removeCueText: () => 'Може да се уклони',
    timeComponent_tooltipZoomIn: () => 'Увећај',
    timeComponent_tooltipZoomOut: () => 'Умањи',
    train_current: () => 'Тренутно',
    train_message_type: () => 'Тип поруке',
    train_not_visited: () => 'Није посећено',
    train_status: (p) => 'Корак ' + p['currentStep'] + ' од ' + p['numberOfSteps'],
    train_visited: () => 'Посећено',
    userAssistance_learnMore: () => 'Сазнајте више',
    userAssistance_required: () => 'Обавезно',
    vis_clearSelection: () => 'Обриши избор',
    vis_drillable: () => 'Може да се детаљно анализира',
    vis_labelAndValue: (p) => p['LABEL'] + ': ' + p['VALUE'],
    vis_labelCountWithTotal: (p) => p['itemCount'] + ' од ' + p['totalCount'],
    vis_marqueeSelectTooltip: () => 'Избор помичног текста',
    vis_marqueeZoomTooltip: () => 'Увећавање помичног текста',
    vis_noData: () => 'Нема података за приказ',
    vis_panTooltip: () => 'Померање',
    vis_stateLoaded: () => 'Учитано',
    vis_stateLoading: () => 'Учитава се',
    vis_stateSelected: () => 'Изабрано',
    vis_stateUnselected: () => 'Неизабрано',
    warn: () => 'Упозорење'
};

exports["default"] = bundle;
//# sourceMappingURL=bundle.js.map
