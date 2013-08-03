root="${0%/*}/.."
n=100
ruby_dir="$root/test/opt/rubies/ruby-1.9.3-p429"

. "$root/share/chruby/chruby.sh"

for i in {1..3}; do
	echo "Loading $(basename "$ruby_dir") $n times..."

	time (
		for ((i=0; i<$n; i+=1)); do
			chruby_use "$ruby_dir"
		done
	)
done
