require "mail"

Mail.defaults do 
	retriever_method :pop3, :adress		=> "",
							:port		=> 110,
							:user_name		=> '',
							:password		=> '',
							:enable_ssl		=> false
end

mail = Mail.new do 
	from 't@leafyetstudio.xyz'
	to 'leafyetdestek@gmail.com'
	subject 'Ruby Mail Test'
	body File.read('içerik.txt')
end
