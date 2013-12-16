<?php
$module_name = 'REG_Treatment_Plan';
$OBJECT_NAME = 'REG_TREATMENT_PLAN';
$listViewDefs [$module_name] = 
array (
  'REG_TREATMENT_PLAN_NUMBER' => 
  array (
    'width' => '5%',
    'label' => 'LBL_NUMBER',
    'link' => true,
    'default' => true,
  ),
  'REG_TREATMENT_PLAN_REG_PATIENT_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_REG_TREATMENT_PLAN_REG_PATIENT_FROM_REG_PATIENT_TITLE',
    'id' => 'REG_TREATMENT_PLAN_REG_PATIENTREG_PATIENT_IDA',
    'width' => '10%',
    'default' => true,
  ),
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_SUBJECT',
    'default' => true,
    'link' => true,
  ),
  'DATE_ENTERED' => 
  array (
    'type' => 'datetime',
    'label' => 'LBL_DATE_ENTERED',
    'width' => '10%',
    'default' => true,
  ),
  'STATUS' => 
  array (
    'width' => '10%',
    'label' => 'LBL_STATUS',
    'default' => true,
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_USER',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => true,
  ),
  'MODIFIED_BY_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_MODIFIED_NAME',
    'id' => 'MODIFIED_USER_ID',
    'width' => '10%',
    'default' => false,
  ),
  'DATE_MODIFIED' => 
  array (
    'type' => 'datetime',
    'label' => 'LBL_DATE_MODIFIED',
    'width' => '10%',
    'default' => false,
  ),
  'DESCRIPTION' => 
  array (
    'type' => 'text',
    'label' => 'LBL_DESCRIPTION',
    'sortable' => false,
    'width' => '10%',
    'default' => false,
  ),
  'REG_PATIENT_REG_TREATMENT_PLAN_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_REG_PATIENT_REG_TREATMENT_PLAN_FROM_REG_PATIENT_TITLE',
    'id' => 'REG_PATIENT_REG_TREATMENT_PLANREG_PATIENT_IDA',
    'width' => '10%',
    'default' => false,
  ),
  'WORK_LOG' => 
  array (
    'type' => 'text',
    'label' => 'LBL_WORK_LOG',
    'sortable' => false,
    'width' => '10%',
    'default' => false,
  ),
);
?>
