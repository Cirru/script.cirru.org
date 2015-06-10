
var
  React $ require :react

var
  exampleArray $ require :../examples/array.cr
  exampleAssignment $ require :../examples/assignment.cr
  exampleBinary $ require :../examples/binary.cr
  exampleChain $ require :../examples/chain.cr
  exampleClass $ require :../examples/class.cr
  exampleComment $ require :../examples/comment.cr
  exampleCompare $ require :../examples/compare.cr
  exampleCond $ require :../examples/cond.cr
  exampleDetect $ require :../examples/detect.cr
  exampleFor $ require :../examples/for.cr
  exampleKeyword $ require :../examples/keyword.cr
  exampleLambda $ require :../examples/lambda.cr
  exampleMember $ require :../examples/member.cr
  exampleObject $ require :../examples/object.cr
  exampleSwitch $ require :../examples/switch.cr
  exampleTry $ require :../examples/try.cr
  exampleUnary $ require :../examples/unary.cr
  exampleValues $ require :../examples/values.cr
  exampleWhile $ require :../examples/while.cr

var
  Displayer $ React.createFactory $ require :./displayer
  Banner $ React.createFactory $ require :./banner

var
  div $ React.createFactory :div
  span $ React.createFactory :span
  a $ React.createFactory :a

console.log

= module.exports $ React.createClass $ object
  :displayName :page

  :render $ \ ()
    return $ div (object (:className :page))
      div (object (:className :header))
        span (object (:className :name)) ":CirruScript"
        a
          object (:className :github)
            :href :https://github.com/Cirru/Cirru-script
            :target :_blank
          , :GitHub
      Banner
      div (object (:className :body))
        Displayer $ object (:code exampleArray) (:name :Array)
        Displayer $ object (:code exampleAssignment) (:name :Assignment)
        Displayer $ object (:code exampleBinary) (:name ":Binary Operations")
        Displayer $ object (:code exampleChain) (:name ":Chain Methods")
        Displayer $ object (:code exampleClass) (:name :Class)
        Displayer $ object (:code exampleComment) (:name :Comment)
        Displayer $ object (:code exampleCompare) (:name :Comparing)
        Displayer $ object (:code exampleCond) (:name :Assignment)
        Displayer $ object (:code exampleDetect) (:name :Detecting)
        Displayer $ object (:code exampleFor) (:name :For)
        Displayer $ object (:code exampleKeyword) (:name :Keyword)
        Displayer $ object (:code exampleLambda) (:name :Lambda)
        Displayer $ object (:code exampleMember) (:name ":Member Expression")
        Displayer $ object (:code exampleObject) (:name :Object)
        Displayer $ object (:code exampleSwitch) (:name :Switch)
        Displayer $ object (:code exampleTry) (:name :Try)
        Displayer $ object (:code exampleUnary) (:name ":Unary Expression")
        Displayer $ object (:code exampleValues) (:name :Values)
        Displayer $ object (:code exampleWhile) (:name :While)
      div (object (:className :footer))