-- eval "local sum = ARGV[1] + ARGV[2] local result = redis.call('set', KEYS[1], sum) return result" 1 test:key 320 240
-- eval 명령의 첫 번째 파라미터: 수행하고자 하는 루아 스크립트
-- eval 명령의 두 번째 파라미터: 레디스 명령을 호출할 때 사용될 키의 개수. test:key만 입력하므로 1이다. 2개의 key입력시 2를 입력하면 된다.
local sum = ARGV[1] + ARGV[2]
local result = redis.call('set', KEYS[1], sum)
return result




