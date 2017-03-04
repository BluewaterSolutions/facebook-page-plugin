/**
* A Facebook widget for ContentBox
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
    * @facebookURL.hint The URL of the Facebook Page
    * @facebookURL.label Facebook URL
    * @width.hint The pixel width of the plugin. Min. is 180 & Max. is 500
    * @height.hint The pixel height of the plugin. Min. is 70
    * @tabs.hint Tabs to render i.e. timeline, events, messages. Use a comma-separated list to add multiple tabs, i.e. timeline, events.
    * @adaptWidth.hint Try to fit inside the container width
    * @showFriendFaces.hint Show profile photos when friends like this
    * @useSmallHeader.hint Use the small header instead
    * @hideCoverPhoto.hint Hide cover photo in the header
    * @hideCTA.label Hide Call to Action Button
    * @hideCTA.hint Hide the custom call to action button (if available)
    */
    any function renderIt(	string facebookURL="https://www.facebook.com/BluewaterBusinessSolutions/",
    						string numeric width="340",
    						string numeric height="500",
    						string tabs="timeline",
    						boolean adaptWidth=true,
    						boolean showFriendFaces=true,
    						boolean useSmallHeader=false,
    						boolean hideCoverPhoto=false,
    						hideCTA=false 
    					){
        var event       = getRequestContext();
        var cbSettings  = event.getValue(name="cbSettings",private=true);
        var captcha     = "";
        var FacebookPagePlugin = "<div 
			class='fb-page' 
			data-href='#arguments.facebookURL#' 
			data-tabs='#arguments.tabs#' 
			data-width='#arguments.width#' 
			data-height='#arguments.height#' 
			data-small-header='#arguments.useSmallHeader#' 
			data-adapt-container-width='true' 
			data-hide-cover='#arguments.hideCoverPhoto#' 
			data-show-facepile='#arguments.showFriendFaces#'
			data-hide_cta='#arguments.hideCTA#'>
			<blockquote cite='#arguments.facebookURL#' class='fb-xfbml-parse-ignore'>
			<a href='#arguments.facebookURL#' target='_blank'>View on Facebook</a>
			</blockquote></div>";
        return FacebookPagePlugin;
    }
}
