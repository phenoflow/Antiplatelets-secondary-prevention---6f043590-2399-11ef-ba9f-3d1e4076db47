cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-suspension---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-modifiedrelease---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-suspension---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-sachet---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-sachet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-modifiedrelease---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-liquid---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-liquid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-sachet---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-375mg---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-liquid---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-300mg---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-375mg---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-ticagrelor---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-ticagrelor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-300mg---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-retard---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-retard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-ticagrelor---primary/output
  efient-antiplatelets-secondary-prevention-primary-for-diabetes-mellitus---primary:
    run: efient-antiplatelets-secondary-prevention-primary-for-diabetes-mellitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-retard---primary/output
  brilique-antiplatelets-secondary-prevention-primary-for-diabetes-mellitus---primary:
    run: brilique-antiplatelets-secondary-prevention-primary-for-diabetes-mellitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: efient-antiplatelets-secondary-prevention-primary-for-diabetes-mellitus---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-dipyridamole---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-dipyridamole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: brilique-antiplatelets-secondary-prevention-primary-for-diabetes-mellitus---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-solution---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-dipyridamole---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-250mg---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-solution---primary/output
  orodispersible-antiplatelets-secondary-prevention-primary-for-diabetes-mellitus---primary:
    run: orodispersible-antiplatelets-secondary-prevention-primary-for-diabetes-mellitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-250mg---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-capsule---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: orodispersible-antiplatelets-secondary-prevention-primary-for-diabetes-mellitus---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-100mg---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-capsule---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-postmi---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-postmi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-100mg---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-gastroresistant---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-gastroresistant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-postmi---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-pyridantin---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-pyridantin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-gastroresistant---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-plavix---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-plavix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-pyridantin---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-prasugrel---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-prasugrel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-plavix---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-persantin---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-persantin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-prasugrel---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-200mg---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-persantin---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-sugar---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-200mg---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-tablet---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-sugar---primary/output
  antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-prafsia---primary:
    run: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-prafsia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-tablet---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: antiplatelets-secondary-prevention-primary-for-diabetes-mellitus-prafsia---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
