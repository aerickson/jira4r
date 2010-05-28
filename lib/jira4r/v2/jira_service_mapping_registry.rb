
module Jira4R
  module V2

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsBeansSoapRpcJiraAtlassianCom = "http://beans.soap.rpc.jira.atlassian.com"
  NsExceptionRpcJiraAtlassianCom = "http://exception.rpc.jira.atlassian.com"

  EncodedRegistry.register(
    :class => RemoteComment,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteComment"),
    :schema_element => [
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(nil, "body")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["groupLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "groupLevel")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["roleLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "roleLevel")]],
      ["updateAuthor", ["SOAP::SOAPString", XSD::QName.new(nil, "updateAuthor")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteTimeInfo,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteTimeInfo"),
    :schema_element => [
      ["serverTime", ["SOAP::SOAPString", XSD::QName.new(nil, "serverTime")]],
      ["timeZoneId", ["SOAP::SOAPString", XSD::QName.new(nil, "timeZoneId")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteServerInfo,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteServerInfo"),
    :schema_element => [
      ["baseUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "baseUrl")]],
      ["buildDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "buildDate")]],
      ["buildNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "buildNumber")]],
      ["edition", ["SOAP::SOAPString", XSD::QName.new(nil, "edition")]],
      ["serverTime", ["RemoteTimeInfo", XSD::QName.new(nil, "serverTime")]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(nil, "version")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteEntity,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteEntity"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => RemoteUser,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteUser"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteEntity"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["fullname", ["SOAP::SOAPString", XSD::QName.new(nil, "fullname")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteGroup,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteGroup"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteEntity"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteVersion,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteVersion"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["archived", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "archived")]],
      ["releaseDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "releaseDate")]],
      ["released", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "released")]],
      ["sequence", ["SOAP::SOAPLong", XSD::QName.new(nil, "sequence")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteComponent,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteComponent"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteCustomFieldValue,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteCustomFieldValue"),
    :schema_element => [
      ["customfieldId", ["SOAP::SOAPString", XSD::QName.new(nil, "customfieldId")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["values", ["ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteIssue,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteIssue"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["affectsVersions", ["ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "affectsVersions")]],
      ["assignee", ["SOAP::SOAPString", XSD::QName.new(nil, "assignee")]],
      ["attachmentNames", ["ArrayOf_xsd_string", XSD::QName.new(nil, "attachmentNames")]],
      ["components", ["ArrayOf_tns1_RemoteComponent", XSD::QName.new(nil, "components")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["customFieldValues", ["ArrayOf_tns1_RemoteCustomFieldValue", XSD::QName.new(nil, "customFieldValues")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["duedate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "duedate")]],
      ["environment", ["SOAP::SOAPString", XSD::QName.new(nil, "environment")]],
      ["fixVersions", ["ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "fixVersions")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(nil, "priority")]],
      ["project", ["SOAP::SOAPString", XSD::QName.new(nil, "project")]],
      ["reporter", ["SOAP::SOAPString", XSD::QName.new(nil, "reporter")]],
      ["resolution", ["SOAP::SOAPString", XSD::QName.new(nil, "resolution")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["summary", ["SOAP::SOAPString", XSD::QName.new(nil, "summary")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]],
      ["votes", ["SOAP::SOAPLong", XSD::QName.new(nil, "votes")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteFieldValue,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteFieldValue"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["values", ["ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteNamedObject,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteNamedObject"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteIssueType,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteIssueType"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]],
      ["subTask", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "subTask")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteConfiguration,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteConfiguration"),
    :schema_element => [
      ["allowAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowAttachments")]],
      ["allowExternalUserManagment", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowExternalUserManagment")]],
      ["allowIssueLinking", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowIssueLinking")]],
      ["allowSubTasks", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowSubTasks")]],
      ["allowTimeTracking", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowTimeTracking")]],
      ["allowUnassignedIssues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowUnassignedIssues")]],
      ["allowVoting", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowVoting")]],
      ["allowWatching", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowWatching")]],
      ["timeTrackingDaysPerWeek", ["SOAP::SOAPInt", XSD::QName.new(nil, "timeTrackingDaysPerWeek")]],
      ["timeTrackingHoursPerDay", ["SOAP::SOAPInt", XSD::QName.new(nil, "timeTrackingHoursPerDay")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteScheme,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteScheme"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemotePermission,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermission"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["permission", ["SOAP::SOAPLong", XSD::QName.new(nil, "permission")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemotePermissionMapping,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermissionMapping"),
    :schema_element => [
      ["permission", ["RemotePermission", XSD::QName.new(nil, "permission")]],
      ["remoteEntities", ["ArrayOf_tns1_RemoteEntity", XSD::QName.new(nil, "remoteEntities")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemotePermissionScheme,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermissionScheme"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteScheme"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["permissionMappings", ["ArrayOf_tns1_RemotePermissionMapping", XSD::QName.new(nil, "permissionMappings")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteProject,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProject"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["issueSecurityScheme", ["RemoteScheme", XSD::QName.new(nil, "issueSecurityScheme")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["lead", ["SOAP::SOAPString", XSD::QName.new(nil, "lead")]],
      ["notificationScheme", ["RemoteScheme", XSD::QName.new(nil, "notificationScheme")]],
      ["permissionScheme", ["RemotePermissionScheme", XSD::QName.new(nil, "permissionScheme")]],
      ["projectUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "projectUrl")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemotePriority,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePriority"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]],
      ["color", ["SOAP::SOAPString", XSD::QName.new(nil, "color")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteResolution,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteResolution"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteStatus,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteStatus"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteProjectRole,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProjectRole"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteRoleActor,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteRoleActor"),
    :schema_element => [
      ["descriptor", ["SOAP::SOAPString", XSD::QName.new(nil, "descriptor")]],
      ["parameter", ["SOAP::SOAPString", XSD::QName.new(nil, "parameter")]],
      ["projectRole", ["RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteRoleActors,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteRoleActors"),
    :schema_element => [
      ["projectRole", ["RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteProjectRoleActors,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProjectRoleActors"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteRoleActors"),
    :schema_element => [
      ["projectRole", ["RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]],
      ["project", ["RemoteProject", XSD::QName.new(nil, "project")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteField,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteField"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteFilter,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteFilter"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["project", ["SOAP::SOAPString", XSD::QName.new(nil, "project")]],
      ["xml", ["SOAP::SOAPString", XSD::QName.new(nil, "xml")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteSecurityLevel,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteSecurityLevel"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteAvatar,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteAvatar"),
    :schema_element => [
      ["base64Data", ["SOAP::SOAPString", XSD::QName.new(nil, "base64Data")]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(nil, "contentType")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["owner", ["SOAP::SOAPString", XSD::QName.new(nil, "owner")]],
      ["system", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "system")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteAttachment,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteAttachment"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")]],
      ["filesize", ["SOAP::SOAPLong", XSD::QName.new(nil, "filesize")]],
      ["mimetype", ["SOAP::SOAPString", XSD::QName.new(nil, "mimetype")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteWorklog,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteWorklog"),
    :schema_element => [
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["groupLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "groupLevel")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["roleLevelId", ["SOAP::SOAPString", XSD::QName.new(nil, "roleLevelId")]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startDate")]],
      ["timeSpent", ["SOAP::SOAPString", XSD::QName.new(nil, "timeSpent")]],
      ["timeSpentInSeconds", ["SOAP::SOAPLong", XSD::QName.new(nil, "timeSpentInSeconds")]],
      ["updateAuthor", ["SOAP::SOAPString", XSD::QName.new(nil, "updateAuthor")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemoteException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => RemotePermissionException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemotePermissionException"),
    :schema_basetype => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => RemoteValidationException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteValidationException"),
    :schema_basetype => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => RemoteAuthenticationException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteAuthenticationException"),
    :schema_basetype => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteUser,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteUser") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteVersion,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteVersion") }
  )

  EncodedRegistry.set(
    ArrayOf_xsd_string,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteComponent,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteComponent") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteCustomFieldValue,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteCustomFieldValue") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteFieldValue,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteFieldValue") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteNamedObject,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteNamedObject") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteIssueType,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteIssueType") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteEntity,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteEntity") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemotePermissionMapping,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermissionMapping") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemotePriority,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePriority") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteResolution,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteResolution") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteStatus,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteStatus") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteProjectRole,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProjectRole") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteRoleActor,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteRoleActor") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteScheme,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteScheme") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteField,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteField") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteComment,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteComment") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteFilter,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteFilter") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteSecurityLevel,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteSecurityLevel") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteAvatar,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteAvatar") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemotePermissionScheme,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermissionScheme") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemotePermission,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermission") }
  )

  EncodedRegistry.set(
    ArrayOf_xsd_base64Binary,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "byte[]") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteAttachment,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteAttachment") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteWorklog,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteWorklog") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteIssue,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteIssue") }
  )

  EncodedRegistry.set(
    ArrayOf_tns1_RemoteProject,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProject") }
  )

  LiteralRegistry.register(
    :class => RemoteComment,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteComment"),
    :schema_element => [
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(nil, "body")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["groupLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "groupLevel")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["roleLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "roleLevel")]],
      ["updateAuthor", ["SOAP::SOAPString", XSD::QName.new(nil, "updateAuthor")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteTimeInfo,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteTimeInfo"),
    :schema_element => [
      ["serverTime", ["SOAP::SOAPString", XSD::QName.new(nil, "serverTime")]],
      ["timeZoneId", ["SOAP::SOAPString", XSD::QName.new(nil, "timeZoneId")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteServerInfo,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteServerInfo"),
    :schema_element => [
      ["baseUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "baseUrl")]],
      ["buildDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "buildDate")]],
      ["buildNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "buildNumber")]],
      ["edition", ["SOAP::SOAPString", XSD::QName.new(nil, "edition")]],
      ["serverTime", ["RemoteTimeInfo", XSD::QName.new(nil, "serverTime")]],
      ["version", ["SOAP::SOAPString", XSD::QName.new(nil, "version")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteEntity,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteEntity"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemoteUser,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteUser"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteEntity"),
    :schema_element => [
      ["email", ["SOAP::SOAPString", XSD::QName.new(nil, "email")]],
      ["fullname", ["SOAP::SOAPString", XSD::QName.new(nil, "fullname")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteGroup,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteGroup"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteEntity"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteVersion,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteVersion"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["archived", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "archived")]],
      ["releaseDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "releaseDate")]],
      ["released", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "released")]],
      ["sequence", ["SOAP::SOAPLong", XSD::QName.new(nil, "sequence")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteComponent,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteComponent"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteCustomFieldValue,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteCustomFieldValue"),
    :schema_element => [
      ["customfieldId", ["SOAP::SOAPString", XSD::QName.new(nil, "customfieldId")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["values", ["ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteIssue,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteIssue"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["affectsVersions", ["ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "affectsVersions")]],
      ["assignee", ["SOAP::SOAPString", XSD::QName.new(nil, "assignee")]],
      ["attachmentNames", ["ArrayOf_xsd_string", XSD::QName.new(nil, "attachmentNames")]],
      ["components", ["ArrayOf_tns1_RemoteComponent", XSD::QName.new(nil, "components")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["customFieldValues", ["ArrayOf_tns1_RemoteCustomFieldValue", XSD::QName.new(nil, "customFieldValues")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["duedate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "duedate")]],
      ["environment", ["SOAP::SOAPString", XSD::QName.new(nil, "environment")]],
      ["fixVersions", ["ArrayOf_tns1_RemoteVersion", XSD::QName.new(nil, "fixVersions")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(nil, "priority")]],
      ["project", ["SOAP::SOAPString", XSD::QName.new(nil, "project")]],
      ["reporter", ["SOAP::SOAPString", XSD::QName.new(nil, "reporter")]],
      ["resolution", ["SOAP::SOAPString", XSD::QName.new(nil, "resolution")]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "status")]],
      ["summary", ["SOAP::SOAPString", XSD::QName.new(nil, "summary")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]],
      ["votes", ["SOAP::SOAPLong", XSD::QName.new(nil, "votes")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteFieldValue,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteFieldValue"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["values", ["ArrayOf_xsd_string", XSD::QName.new(nil, "values")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteNamedObject,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteNamedObject"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteIssueType,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteIssueType"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]],
      ["subTask", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "subTask")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteConfiguration,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteConfiguration"),
    :schema_element => [
      ["allowAttachments", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowAttachments")]],
      ["allowExternalUserManagment", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowExternalUserManagment")]],
      ["allowIssueLinking", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowIssueLinking")]],
      ["allowSubTasks", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowSubTasks")]],
      ["allowTimeTracking", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowTimeTracking")]],
      ["allowUnassignedIssues", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowUnassignedIssues")]],
      ["allowVoting", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowVoting")]],
      ["allowWatching", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "allowWatching")]],
      ["timeTrackingDaysPerWeek", ["SOAP::SOAPInt", XSD::QName.new(nil, "timeTrackingDaysPerWeek")]],
      ["timeTrackingHoursPerDay", ["SOAP::SOAPInt", XSD::QName.new(nil, "timeTrackingHoursPerDay")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteScheme,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteScheme"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemotePermission,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermission"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["permission", ["SOAP::SOAPLong", XSD::QName.new(nil, "permission")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemotePermissionMapping,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermissionMapping"),
    :schema_element => [
      ["permission", ["RemotePermission", XSD::QName.new(nil, "permission")]],
      ["remoteEntities", ["ArrayOf_tns1_RemoteEntity", XSD::QName.new(nil, "remoteEntities")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemotePermissionScheme,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePermissionScheme"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteScheme"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["permissionMappings", ["ArrayOf_tns1_RemotePermissionMapping", XSD::QName.new(nil, "permissionMappings")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteProject,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProject"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["issueSecurityScheme", ["RemoteScheme", XSD::QName.new(nil, "issueSecurityScheme")]],
      ["key", ["SOAP::SOAPString", XSD::QName.new(nil, "key")]],
      ["lead", ["SOAP::SOAPString", XSD::QName.new(nil, "lead")]],
      ["notificationScheme", ["RemoteScheme", XSD::QName.new(nil, "notificationScheme")]],
      ["permissionScheme", ["RemotePermissionScheme", XSD::QName.new(nil, "permissionScheme")]],
      ["projectUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "projectUrl")]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "url")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemotePriority,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemotePriority"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]],
      ["color", ["SOAP::SOAPString", XSD::QName.new(nil, "color")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteResolution,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteResolution"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteStatus,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteStatus"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteConstant"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["icon", ["SOAP::SOAPString", XSD::QName.new(nil, "icon")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteProjectRole,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProjectRole"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteRoleActor,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteRoleActor"),
    :schema_element => [
      ["descriptor", ["SOAP::SOAPString", XSD::QName.new(nil, "descriptor")]],
      ["parameter", ["SOAP::SOAPString", XSD::QName.new(nil, "parameter")]],
      ["projectRole", ["RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteRoleActors,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteRoleActors"),
    :schema_element => [
      ["projectRole", ["RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteProjectRoleActors,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteProjectRoleActors"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteRoleActors"),
    :schema_element => [
      ["projectRole", ["RemoteProjectRole", XSD::QName.new(nil, "projectRole")]],
      ["roleActors", ["ArrayOf_tns1_RemoteRoleActor", XSD::QName.new(nil, "roleActors")]],
      ["users", ["ArrayOf_tns1_RemoteUser", XSD::QName.new(nil, "users")]],
      ["project", ["RemoteProject", XSD::QName.new(nil, "project")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteField,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteField"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteFilter,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteFilter"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]],
      ["project", ["SOAP::SOAPString", XSD::QName.new(nil, "project")]],
      ["xml", ["SOAP::SOAPString", XSD::QName.new(nil, "xml")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteSecurityLevel,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteSecurityLevel"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractNamedRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteAvatar,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteAvatar"),
    :schema_element => [
      ["base64Data", ["SOAP::SOAPString", XSD::QName.new(nil, "base64Data")]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(nil, "contentType")]],
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "id")]],
      ["owner", ["SOAP::SOAPString", XSD::QName.new(nil, "owner")]],
      ["system", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "system")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "type")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteAttachment,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteAttachment"),
    :schema_basetype => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "AbstractRemoteEntity"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(nil, "filename")]],
      ["filesize", ["SOAP::SOAPLong", XSD::QName.new(nil, "filesize")]],
      ["mimetype", ["SOAP::SOAPString", XSD::QName.new(nil, "mimetype")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteWorklog,
    :schema_type => XSD::QName.new(NsBeansSoapRpcJiraAtlassianCom, "RemoteWorklog"),
    :schema_element => [
      ["author", ["SOAP::SOAPString", XSD::QName.new(nil, "author")]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")]],
      ["created", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "created")]],
      ["groupLevel", ["SOAP::SOAPString", XSD::QName.new(nil, "groupLevel")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "id")]],
      ["roleLevelId", ["SOAP::SOAPString", XSD::QName.new(nil, "roleLevelId")]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "startDate")]],
      ["timeSpent", ["SOAP::SOAPString", XSD::QName.new(nil, "timeSpent")]],
      ["timeSpentInSeconds", ["SOAP::SOAPLong", XSD::QName.new(nil, "timeSpentInSeconds")]],
      ["updateAuthor", ["SOAP::SOAPString", XSD::QName.new(nil, "updateAuthor")]],
      ["updated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "updated")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemoteException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemotePermissionException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemotePermissionException"),
    :schema_basetype => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemoteValidationException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteValidationException"),
    :schema_basetype => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => RemoteAuthenticationException,
    :schema_type => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteAuthenticationException"),
    :schema_basetype => XSD::QName.new(NsExceptionRpcJiraAtlassianCom, "RemoteException"),
    :schema_element => []
  )

end

end
end
