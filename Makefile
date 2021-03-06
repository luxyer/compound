test:
	@./node_modules/.bin/mocha --require ./test/init.js test/*.test.js
test-verbose:
	@./node_modules/.bin/mocha --reporter spec --require ./test/init.js  test/*.test.js
testing:
	./node_modules/.bin/mocha --watch --reporter min --require ./test/init.js --require should test/*.test.js
docs:
	node docs/sources/build
apidocs:
	makedoc lib/*.js lib/*/*.js -t "RailwayJS API docs" -g "1602/express-on-railway" --assets

.PHONY: test
.PHONY: doc
.PHONY: docs
