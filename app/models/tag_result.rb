# Tags are text values assigned to various site documents.
class TagResult

  attr_accessor :tagId, :tagVal, :tagType, :tagSource

  def initialize(tid, tval, ttype, tsrc)
    @tagid = tid
    @tagVal = tval
    @tagType = ttype
    @tagSource = tsrc
  end
  
  # This subclass is used to auto-generate the RESTful data structure.  It is generally not useful for internal Ruby usage
  #  but must be included for full RESTful functionality.
  class Entity < Grape::Entity
      expose :tagId, documentation: { type:  "Integer", desc: "Not required, but the primary key identifer for this tag" }
      expose :tagVal, documentation: { type: "String", desc: "The text value of the tag" }
      expose :tagType, documentation: { type: "String", desc:  "The type of tag this represents" }
      expose :tagSource, documentation: { type: "String", desc: "The original source of the tag value; this varies for different document types" }
  end

end
