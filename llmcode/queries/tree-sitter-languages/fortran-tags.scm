(program_unit
  name: (identifier) @name.definition.program) @definition.program

(subroutine_subprogram
  name: (identifier) @name.definition.function) @definition.function

(function_subprogram
  name: (identifier) @name.definition.function) @definition.function

(module
  name: (identifier) @name.definition.module) @definition.module

(use_statement
  module: (identifier) @name.reference.module) @reference.module

(call_statement
  subroutine: (identifier) @name.reference.function) @reference.function

(variable_declaration
  name: (identifier) @name.definition.variable) @definition.variable

(parameter_statement
  name: (identifier) @name.definition.parameter) @definition.parameter

(type_definition
  name: (identifier) @name.definition.type) @definition.type

(interface_definition
  name: (identifier) @name.definition.interface) @definition.interface

(procedure_declaration
  name: (identifier) @name.definition.procedure) @definition.procedure

(derived_type_definition
  name: (identifier) @name.definition.type) @definition.type

(component_part
  (component_declaration
    name: (identifier) @name.definition.field)) @definition.field

(enumeration_type
  name: (identifier) @name.definition.type) @definition.type

(enum_member
  name: (identifier) @name.definition.enum) @definition.enum
