<?php
$module_name = 'REG_Treatment_Plan';
$_object_name = 'reg_treatment_plan';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL6' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL5' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL4' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL3' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
        'LBL_EDITVIEW_PANEL1' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'reg_treatment_plan_number',
            'type' => 'readonly',
          ),
          1 => 'assigned_user_name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'reg_treatment_plan_reg_patient_name',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'name',
            'displayParams' => 
            array (
              'size' => 60,
            ),
          ),
          1 => 'status',
        ),
        3 => 
        array (
          0 => 'work_log',
        ),
      ),
      'lbl_editview_panel6' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'clinical_notes_c',
            'studio' => 'visible',
            'label' => 'LBL_CLINICAL_NOTES ',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'opioid_treatment_indication_c',
            'label' => 'LBL_OPIOID_TREATMENT_INDICATION',
          ),
          1 => 
          array (
            'name' => 'aberrant_behavior_noted_c',
            'studio' => 'visible',
            'label' => 'LBL_ABERRANT_BEHAVIOR_NOTED',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'confirms_taking_c',
            'studio' => 'visible',
            'label' => 'LBL_CONFIRMS_TAKING',
          ),
          1 => 
          array (
            'name' => 'cs_agrrent_signed_c',
            'label' => 'CONTROLLED SUBSTANCE PATIENT-PROVIDER AGREEMENT SIGNED ON (DATE)',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'pt_active_c',
            'studio' => 'visible',
            'label' => 'LBL_PT_ACTIVE',
          ),
          1 => 
          array (
            'name' => 'pt_active_date_c',
            'label' => 'LBL_PT_ACTIVE_DATE',
          ),
        ),
      ),
      'lbl_editview_panel5' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'med_safety_pulm_prob_c',
            'studio' => 'visible',
            'label' => 'LBL_MED_SAFETY_PULM_PROB',
          ),
          1 => 
          array (
            'name' => 'med_safety_sedatives_c',
            'studio' => 'visible',
            'label' => 'LBL_MED_SAFETY_SEDATIVES',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'med_safety_high_medd_c',
            'studio' => 'visible',
            'label' => 'LBL_MED_SAFETY_HIGH_MEDD',
          ),
          1 => 
          array (
            'name' => 'risk_level_c',
            'label' => 'LBL_RISK_LEVEL',
          ),
        ),
      ),
      'lbl_editview_panel4' => 
      array (
        0 => 
        array (
          0 => '',
          1 => '',
        ),
        1 => 
        array (
          0 => '',
          1 => '',
        ),
        2 => 
        array (
          0 => '',
          1 => '',
        ),
        3 => 
        array (
          0 => '',
          1 => '',
        ),
      ),
      'lbl_editview_panel3' => 
      array (
        0 => 
        array (
          0 => '',
          1 => '',
        ),
      ),
      'lbl_editview_panel1' => 
      array (
        0 => 
        array (
          0 => '',
          1 => '',
        ),
        1 => 
        array (
          0 => '',
          1 => '',
        ),
        2 => 
        array (
          0 => '',
          1 => '',
        ),
        3 => 
        array (
          0 => '',
          1 => '',
        ),
        4 => 
        array (
          0 => '',
          1 => '',
        ),
      ),
    ),
  ),
);
?>
