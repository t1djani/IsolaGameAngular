angular.module 'rattrapagesRush04App'
  .directive 'squareDirective', ( $rootScope ) ->
    restrict: 'E'
    replace: true
    scope:
      square:  "="
      squares: "="
    template: "<div class='{{square.color}}' ng-click='getPions()'>
                <div ng-if='square.pionNoir' class='pionBlack'></div>
                <div ng-if='square.pionBlanc' class='pionWhite'></div>
              </div>"

    link: ( scope, element, attrs ) ->
      scope.getPions = ->
        if scope.square.pionNoir is undefined and $rootScope.tour is 1 || scope.square.pionNoir is false and $rootScope.tour is 1
          for s in scope.squares
            s.pionNoir = false

          scope.square.pionNoir = true
          scope.square.pionBlanc = undefined
          $rootScope.tour = 2
          return

        if scope.square.pionBlanc is undefined and $rootScope.tour is 2 || scope.square.pionBlanc is false and $rootScope.tour is 2
          for s in scope.squares
            s.pionBlanc = false

          scope.square.pionBlanc = true
          scope.square.pionNoir = undefined
          $rootScope.tour = 1
          return
