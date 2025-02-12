/* @oracle/oraclejet-preact: undefined */
'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

// This file is auto-generated by @oracle/oraclejet-icu-l10n from src/resources/icu/bundle.json
// and should not be edited by hand. Update the JSON file and rerun the build to regenerate this content.
const bundle = {
    accAnnounceMovedKey: (p) => 'Premaknjeno: ' + p['itemKey'] + ' ' + p['position'] + ' ' + p['referenceKey'] + '.',
    accCommandKey: () => 'Ukaz',
    accControlKey: () => 'Zapri',
    accPositionAfter: () => 'po',
    accPositionBefore: () => 'pred',
    accReorderInstructions: (p) => 'Pritisnite in pridržite tipko ' +
        p['keyPressed'] +
        ' ter tipki Shift, nato pa spremenite vrstni red s puščičnima tipkama.',
    calendarDateConverter_parseError: (p) => 'Vnesite celoten datum, kot je ta: ' + p['dateExample'] + '.',
    calendarMonthConverter_parseError: (p) => 'Vnesite mesec in leto, kot sledi: ' + p['dateExample'] + '.',
    chart_labelGroup: () => 'Skupina',
    chart_labelSeries: () => 'Serija',
    chart_labelValue: () => 'Vrednost',
    checkboxSet_requiredMessageDetail: () => 'Zahtevano',
    checkbox_requiredMessageDetail: () => 'Zahtevano',
    close: () => 'Zapri',
    collection_noData: () => 'Ni podatkov za prikaz.',
    collection_selectAllRows: () => 'Izbira vseh vrstic',
    collection_selectRow: (p) => 'Izbira vrstice ' + p['ROW_NAME'],
    collection_sortDisabled: () => 'Ni razvrstljivo',
    collection_sortEnabled: () => 'Razvrstljivo',
    confirmation: () => 'Potrditev',
    datePicker_currentDate: () => 'Trenutni datum',
    datePicker_goToToday: () => 'Pojdi na danes',
    datePicker_label: () => 'Izbirnik datuma',
    datePicker_month: () => 'Mesec',
    datePicker_months: () => 'Meseci',
    datePicker_next: () => 'Naslednji',
    datePicker_nextDecade: () => 'Naslednje desetletje',
    datePicker_nextMonth: () => 'Naslednji mesec',
    datePicker_prev: () => 'Prejšnji',
    datePicker_prevDecade: () => 'Prejšnje desetletje',
    datePicker_prevMonth: () => 'Prejšnji mesec',
    datePicker_restricted: () => 'Omejeno',
    datePicker_selected: () => 'Izbrano',
    datePicker_today: () => 'Danes',
    datePicker_weekNum: (p) => 'Teden št. ' + p['NUM'],
    datePicker_weekNumColLabel: () => 'Številka tedna',
    datePicker_year: () => 'Leto',
    datePicker_years: () => 'Leta',
    error: () => 'Napaka',
    expandableList_expandCollapseInstructionText: () => 'Za razširitev in strnitev uporabite puščične tipke',
    expandableList_groupCollapse: () => 'Strnjeno',
    expandableList_groupExpand: () => 'Razširjeno',
    filePicker_addFiles: () => 'Dodaj datoteke',
    filePicker_dropzonePrimaryText: () => 'Povlecite in spustite',
    filePicker_dropzoneSecondaryText: () => 'Izberite datoteko ali jo spustite sem',
    filePicker_dropzoneSecondaryTextMultiple: () => 'Izberite ali spustite datoteke sem',
    filePicker_multipleFileTypeUploadError: (p) => 'Ne morete nalagati datotek tega tipa: ' + p['fileTypes'],
    filePicker_singleFileUploadError: () => 'Naložite po eno datoteko naenkrat',
    filePicker_singleTypeUploadError: (p) => 'Ne morete nalagati datotek tipa ' + p['fileType'],
    filePicker_unknownFileTypeUploadError: () => 'neznano',
    formControl_clear: () => 'Počisti',
    formControl_day: () => 'Dan',
    formControl_helpAvailable: () => 'Na voljo je pomoč',
    formControl_hide: () => 'Skrij',
    formControl_limitReached: (p) => 'Dosegli ste omejitev, ki je ' +
        ({
            one: new Intl.NumberFormat('sl').format(p['CHARACTER_LIMIT']) + ' znak',
            two: new Intl.NumberFormat('sl').format(p['CHARACTER_LIMIT']) + ' znaka',
            few: new Intl.NumberFormat('sl').format(p['CHARACTER_LIMIT']) + ' znake'
        }[new Intl.PluralRules('sl').select(p['CHARACTER_LIMIT'])] ||
            new Intl.NumberFormat('sl').format(p['CHARACTER_LIMIT']) + ' znakov') +
        '.',
    formControl_loading: () => 'Nalaganje',
    formControl_maxLength: (p) => 'Vnesete lahko največ toliko znakov: ' + p['MAX_LENGTH'] + '.',
    formControl_maxLengthRemaining: (p) => 'Preostali znaki: ' + p['CHARACTER_COUNT'] + '.',
    formControl_month: () => 'Mesec',
    formControl_readOnly: () => 'Samo za branje',
    formControl_requiredMessageDetail: () => 'Vnesite vrednost.',
    formControl_show: () => 'Prikaži',
    formControl_year: () => 'Leto',
    gantt_labelDate: () => 'Datum',
    gantt_labelEnd: () => 'Konec',
    gantt_labelLabel: () => 'Oznaka',
    gantt_labelRow: () => 'Vrstica',
    gantt_labelStart: () => 'Začetek',
    indexer_disabledLabel: (p) => p['SECTION'] + '. Ni najdenega ujemajočega se odseka.',
    indexer_keyboardInstructionText: () => 'Za izbiro vrednosti pritisnite tipko Enter.',
    indexer_othersLabel: () => '#',
    indexer_separatorLabel: (p) => 'Med ' + p['FROM_SECTION'] + ' in ' + p['TO_SECTION'] + '.',
    indexer_touchInstructionText: () => 'Dvakrat tapnite in zadržite za vstop v način kretenj, nato pa za prilagajanje vrednosti povlecite gor ali dol.',
    info: () => 'Informacije',
    inputDateMask_date_cleared: () => 'Datum čiščenja',
    inputDateMask_dayPlaceholder: () => 'dd',
    inputDateMask_empty_segment: () => 'Prazno',
    inputDateMask_monthPlaceholder: () => 'mm',
    inputDateMask_yearPlaceholder: () => 'llll',
    inputDatePicker_dateRangeOverflowMessageDetail: (p) => 'Vnesite datum, ki je enak ali zgodnejši od ' + p['max'] + '.',
    inputDatePicker_dateRangeUnderflowMessageDetail: (p) => 'Vnesite datum, ki je enak ali poznejši od ' + p['min'] + '.',
    inputDatePicker_dateRestrictionMessageDetail: () => 'Vnesite razpoložljivi datum.',
    inputDatePicker_instruction: () => 'Pritisnite Tab za dostop do koledarja.',
    inputDatePicker_selectDate: () => 'Izberite datum',
    inputMonthMask_dateRangeOverflowMessageDetail: (p) => 'Vnesite mesec in leto, ki sta enaka ali zgodnejša od ' + p['max'] + '.',
    inputMonthMask_dateRangeUnderflowMessageDetail: (p) => 'Vnesite mesec in leto, ki sta enaka ali poznejša od ' + p['min'] + '.',
    inputNumber_converterParseError: () => 'Vnesite številko.',
    inputNumber_decrease: () => 'Zmanjšaj',
    inputNumber_increase: () => 'Povečaj',
    inputPassword_hidden: () => 'Geslo je skrito',
    inputPassword_hide: () => 'Skrij geslo',
    inputPassword_show: () => 'Prikaži geslo',
    inputSensitiveText_hidden: () => 'Občutljivo besedilo je skrito',
    list_msgFetchCompleted: () => 'Naloženo',
    list_msgFetchingData: () => 'Nalaganje',
    list_suggestion: () => 'Predlog',
    messageToast_allMessagesClosed: () => 'Vsa toast obvestila so zaprta.',
    message_close: () => 'Zapri',
    message_confirmation: () => 'Uspeh',
    message_error: () => 'Napaka',
    message_info: () => 'Informacije',
    message_navigationFromMessagesRegion: () => 'Vstopanje v področje sporočil. Pritisnite F6 za krmarjenje nazaj do elementa, ki je bil v fokusu pred tem.',
    message_navigationToMessagesRegion: () => 'Področje sporočil ima nova sporočila. Pritisnite F6 za krmarjenje do najnovejšega področja sporočil.',
    message_warning: () => 'Opozorilo',
    noData_message: () => 'Ni elementov za prikaz',
    overflowItemLabel: () => 'Več zavihkov',
    plural_separator: () => ', ',
    progressIndeterminate: () => 'V teku',
    radio_helpForRadio: () => 'Pomoč za izbirni gumb',
    radio_requiredMessageDetail: () => 'Izberite vrednost.',
    selectMultiple_apply: () => 'Dodeli',
    selectMultiple_back: () => 'Nazaj',
    selectMultiple_countPlus: (p) => p['COUNT'] + '+',
    selectMultiple_highlightSelectedTagsInstructionText: () => 'S puščičnima tipkama levo in desno označite izbrane vrednosti.',
    selectMultiple_removeSelectedTagInstructionText: () => 'Za odstranitev izbrane vrednosti pritisnite tipko Backspace ali Delete.',
    selectMultiple_selectedValues: () => 'Izbrane vrednosti',
    selectMultiple_showSelectedValues: () => 'Prikažite samo izbrane vrednosti.',
    selectMultiple_valuesSelected: (p) => 'Izbrane vrednosti: ' + p['VALUE_COUNT'] + '.',
    select_addToList: () => 'Dodaj na seznam',
    select_addToListAvailable: () => 'Na voljo je dodajanje na seznam',
    select_moreSearchOptions: () => 'Več možnosti iskanja',
    select_moreSearchOptionsAvailable: () => 'Na voljo je več možnosti iskanja',
    select_noMatchesFound: () => 'Ni ustreznih zadetkov.',
    select_oneMatchFound: () => 'Najden je en zadetek',
    select_requiredMessageDetail: () => 'Izberite vrednost.',
    select_sizeMatchesFound: (p) => 'Najdeni zadetki: ' + p['TOTAL_SIZE'],
    select_sizeOrMoreMatchesFound: (p) => 'Najdeni zadetki: ' + p['TOTAL_SIZE'] + ' ali več',
    selectorAll_deselectAll: () => 'Prekliči izbiro vseh',
    selectorAll_selectAll: () => 'Izbira vseh',
    selector_selected: () => 'Potrditveno polje je označeno',
    selector_unselected: () => 'Potrditveno polje ni označeno',
    tabBarNavigationList_removeCueText: () => 'Odstranljivo',
    timeComponent_tooltipZoomIn: () => 'Povečava',
    timeComponent_tooltipZoomOut: () => 'Pomanjšava',
    train_current: () => 'Trenutno',
    train_message_type: () => 'Tip sporočila',
    train_not_visited: () => 'Ni obiskano',
    train_status: (p) => 'Korak ' + p['currentStep'] + ' od ' + p['numberOfSteps'],
    train_visited: () => 'Obiskano',
    userAssistance_learnMore: () => 'Več o tem',
    userAssistance_required: () => 'Zahtevano',
    vis_clearSelection: () => 'Počisti izbiro',
    vis_drillable: () => 'Omogoča vrtanje',
    vis_labelAndValue: (p) => p['LABEL'] + ': ' + p['VALUE'],
    vis_labelCountWithTotal: (p) => p['itemCount'] + ' od ' + p['totalCount'],
    vis_marqueeSelectTooltip: () => 'Izbira potujočega napisa',
    vis_marqueeZoomTooltip: () => 'Povečava potujočega napisa',
    vis_noData: () => 'Ni podatkov za prikaz',
    vis_panTooltip: () => 'Pomikanje',
    vis_stateLoaded: () => 'Naloženo',
    vis_stateLoading: () => 'Nalaganje',
    vis_stateSelected: () => 'Izbrano',
    vis_stateUnselected: () => 'Neizbrano',
    warn: () => 'Opozorilo'
};

exports["default"] = bundle;
//# sourceMappingURL=bundle.js.map
