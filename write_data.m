function result = send_post(url, player_number_string, form_string)
% Write the form (either "ROCK," "PAPER," or "SCISSORS") and the associated
% player number (either "1" or "2") to the url specified.
% 
% Input Arguments:
% - url: The URL to send the post request to; must be a valid site
% - player_number_string: Player number (either "1" or "2")
% - form_string: The form used by the player ("ROCK," "PAPER," or
% "SCISSORS").
% Returns: 
% 0 on successful post, -1 otherwise.
options = weboptions('RequestMethod','post', 'MediaType','application/json');
Body = struct('player', '1'
                'form', 'ROCK');
Body = struct('order', Body);
response = webwrite(url, Body, options);
result = 0
end