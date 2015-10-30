angular.module 'rattrapagesRush04App'
  .directive 'squareDirective', ->
    restrict: 'E'
    replace: true
    scope:
      square: "="
    template: "<div class='{{square.color}}'></div>"