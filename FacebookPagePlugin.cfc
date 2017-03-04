/**
* ContentBox - A Modular Content Platform
* Copyright since 2012 by Ortus Solutions, Corp
* www.ortussolutions.com/products/contentbox
* ---
* A cool basic commenting form for ContentBox
*/
component extends="contentbox.models.ui.BaseWidget" singleton{


	FacebookPagePlugin function init(){
		// Widget Properties
		setName( "FacebookPagePlugin" );
		setVersion( "1.0.6" );
		setDescription( "Generates Facebook Page Plugin" );
		setAuthor( "Bluewater Business Solutions" );
		setAuthorURL( "http://www.bluewatersolutions.com" );
		setIcon( "facebook" );
		setCategory( "Content" );
		return this;
	}

	/**
	* The main commenting form widget
	* @content.hint The content object to build the comment form for: page or entry
	*/
	any function renderIt(string facebookURL="https://www.facebook.com/BluewaterBusinessSolutions/",string width="340",string height="500",string tabs="timeline",boolean adaptWidth=true,boolean showFriendFaces=true,boolean useSmallHeader=false,boolean hideCoverPhoto=false ){
		var event 		= getRequestContext();
		var cbSettings 	= event.getValue(name="cbSettings",private=true);
		var captcha		= "";
		var FacebookPagePlugin = "<div 
class='fb-page' 
data-href='#arguments.facebookURL#' 
data-tabs='#arguments.tabs#' 
data-small-header='#arguments.useSmallHeader#' 
data-adapt-container-width='true' 
data-hide-cover='#arguments.hideCoverPhoto#' 
data-show-facepile='#arguments.showFriendFaces#'>
<blockquote cite='#arguments.facebookURL#' class='fb-xfbml-parse-ignore'>
<a href='#arguments.facebookURL#'>View on Facebook</a>
</blockquote>";

		savecontent variable="FacebookPagePlugin" { WriteOutput("#FacebookPagePlugin#</div>") };

		return FacebookPagePlugin;
	}

}
