# sportify

guys, to do the git stuff, follow this instructions.

position: * new_branch *
git status
git add .
git commit -m 'ready to merge'
git checkout master
position: * master branch *
git pull origin master #this will pull the newest code from github HAVE TO DO THIS OKAY!!
git checkout new_branch
position: * new_branch *
git merge master #if there's conflicts, please solve. I repeat, SOLVE THE DAMN CONFLICTS.
git push origin new_branch
#after that, you merge in github, or you tell me and I'll merge for you.
#after I merge
git checkout master
git pull origin master
#and then keep coding, but ALWAYS CREATE A NEW BRANCH
#how to create a new branch?
git branch -b brand_new_branch
#after you finish you do all the steps again


#but if for whatever reason, you don't want the branch because it sucks
#follow these steps
position: * brand_new_branch *
git status
git add .
git commit -m 'this branch sucks'
git checkout master
git branch -D brand_new_branch


I hope this instructions help.
SPORTIFY IS AWESOME. <3




<!--     <div>
	<a href="/admin">Admin Page</a><br>
		<% @posts.each do |x| %>
			<% @products = x.product_id %>
			<% @oreo = Product.find(@products) %>
			<% @categories = @oreo.category_id %>
			<%= link_to 'View Deal', category_product_post_path(@categories, @products, x) %><br>
			Deal start date: <%= x.start_date %><br>
			Deal end date: <%= x.end_date %><br>
			Deal price: <%= x.price %><br>
			<%= link_to 'See product', category_product_path(@categories, @products) %><br><br>
		<% end %>
	</div>
   -->