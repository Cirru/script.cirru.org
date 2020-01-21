
import :react React
import :../examples/array.cr exampleArray
import :../examples/assignment.cr exampleAssignment
import :../examples/binary.cr exampleBinary
import :../examples/chain.cr exampleChain
import :../examples/comment.cr exampleComment
import :../examples/compare.cr exampleCompare
import :../examples/cond.cr exampleCond
import :../examples/detect.cr exampleDetect
import :../examples/keyword.cr exampleKeyword
import :../examples/lambda.cr exampleLambda
import :../examples/member.cr exampleMember
import :../examples/object.cr exampleObject
import :../examples/switch.cr exampleSwitch
import :../examples/try.cr exampleTry
import :../examples/unary.cr exampleUnary
import :../examples/values.cr exampleValues

import :./displayer Displayer
import :./banner Banner

var
  div $ React.createFactory :div
  span $ React.createFactory :span
  a $ React.createFactory :a

let Page $ \ ()
  div ({} (:className :page))
    div ({} (:className :header))
      span ({} (:className :name)) ":CirruScript"
      a
        {} (:className :github)
          :href :https://github.com/Cirru/Cirru-script
          :target :_blank
        , :GitHub
    React.createElement Banner
    div ({} (:className :body))
      React.createElement Displayer $ {} (:code exampleArray) (:name :Array)
      React.createElement Displayer $ {} (:code exampleAssignment) (:name :Assignment)
      React.createElement Displayer $ {} (:code exampleBinary) (:name ":Binary Operations")
      React.createElement Displayer $ {} (:code exampleChain) (:name ":Chain Methods")
      React.createElement Displayer $ {} (:code exampleComment) (:name :Comment)
      React.createElement Displayer $ {} (:code exampleCompare) (:name :Comparing)
      React.createElement Displayer $ {} (:code exampleCond) (:name :Assignment)
      React.createElement Displayer $ {} (:code exampleDetect) (:name :Detecting)
      React.createElement Displayer $ {} (:code exampleKeyword) (:name :Keyword)
      React.createElement Displayer $ {} (:code exampleLambda) (:name :Lambda)
      React.createElement Displayer $ {} (:code exampleMember) (:name ":Member Expression")
      React.createElement Displayer $ {} (:code exampleObject) (:name :Object)
      React.createElement Displayer $ {} (:code exampleSwitch) (:name :Switch)
      React.createElement Displayer $ {} (:code exampleTry) (:name :Try)
      React.createElement Displayer $ {} (:code exampleUnary) (:name ":Unary Expression")
      React.createElement Displayer $ {} (:code exampleValues) (:name :Values)
    div ({} (:className :footer))

export default Page
