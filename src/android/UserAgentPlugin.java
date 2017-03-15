package com.trendsales.UserAgent;

import org.apache.cordova.CordovaWebView;
import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CordovaInterface;

import android.webkit.WebSettings;
import android.webkit.WebView;

public class UserAgentPlugin extends CordovaPlugin {

  @Override
  public void initialize(CordovaInterface cordova, CordovaWebView webView) {
    super.initialize(cordova, webView);
    WebSettings settings = ((WebView) webView.getEngine().getView()).getSettings();
    String original = settings.getUserAgentString();

    int suffixRes = cordova.getActivity().getResources().getIdentifier("suffix", "string", cordova.getActivity().getPackageName());
    String suffix = cordova.getActivity().getString(suffixRes);

    settings.setUserAgentString(original + " " + suffix);
  }
}
