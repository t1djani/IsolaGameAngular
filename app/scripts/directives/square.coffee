angular.module 'rattrapagesRush04App'
  .directive 'squareDirective', ( $rootScope ) ->
    restrict: 'E'
    replace: true
    scope:
      square: "="
    template: "<div class='{{square.color}}' ng-click='getPions()'>
                <div ng-if='square.pionNoir' class='pionBlack'></div>
                <div ng-if='square.pionBlanc' class='pionWhite'></div>
              </div>"

    link: ( scope, element, attrs ) ->
      scope.getPions = ->
        if scope.square.pionNoir is undefined and $rootScope.tour is 1
          scope.square.pionNoir = true
          scope.square.pionBlanc = undefined
          $rootScope.tour = 2
          return

        if scope.square.pionBlanc is undefined and $rootScope.tour is 2
          scope.square.pionBlanc = true
          scope.square.pionNoir = undefined
          $rootScope.tour = 1
          return
