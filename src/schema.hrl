%%% Copyright (C) 2005-2008 Wager Labs, SA

-record(counter, {
	  type,
	  value
	 }).

-record(player, {
	  oid, % object id
	  nick,
	  password,
	  location,
	  balance = 0.0,
	  inplay = 0.0, % only used while in a game
	  login_errors = 0,
	  pid = none, % process id
	  socket = none, % socket process
	  game = none, % current game
	  disabled = false % player is disabled
	 }).

-record(game_xref, {
	  oid,
	  pid,
	  type,
	  limit
	 }).

-record(seat_history, {
	  nick,
	  hand,
	  state
	 }).

-record(game_history, {
	  key,
	  type,
	  seats,
	  limit,
	  board,
	  pot,
	  events
	 }).

%% app config

-record(game_config, {
	  id,
	  type,
	  seat_count,
	  limit,
	  start_delay,
	  player_timeout,
	  max
	 }).

-record(cluster_config, {
	  id,
	  gateways = [],
	  mnesia_masters = [],
	  logdir = "/tmp",
	  max_login_errors = 5,
	  %% players can start games
	  enable_dynamic_games = false
	 }).
