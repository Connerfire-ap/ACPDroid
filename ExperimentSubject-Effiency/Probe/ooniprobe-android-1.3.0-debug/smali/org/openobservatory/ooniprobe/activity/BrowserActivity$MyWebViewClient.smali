.class Lorg/openobservatory/ooniprobe/activity/BrowserActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openobservatory/ooniprobe/activity/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/activity/BrowserActivity;


# direct methods
.method private constructor <init>(Lorg/openobservatory/ooniprobe/activity/BrowserActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity$MyWebViewClient;->this$0:Lorg/openobservatory/ooniprobe/activity/BrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openobservatory/ooniprobe/activity/BrowserActivity;Lorg/openobservatory/ooniprobe/activity/BrowserActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/openobservatory/ooniprobe/activity/BrowserActivity;
    .param p2, "x1"    # Lorg/openobservatory/ooniprobe/activity/BrowserActivity$1;

    .line 158
    invoke-direct {p0, p1}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity$MyWebViewClient;-><init>(Lorg/openobservatory/ooniprobe/activity/BrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    .line 177
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 178
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->refresh:Landroid/widget/ImageView;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$100()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webViewProgressBar:Landroid/widget/ProgressBar;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$300()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webViewProgressBar:Landroid/widget/ProgressBar;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$300()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x5

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urlLabel:Landroid/widget/TextView;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$200()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ud83d\udd12 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    :cond_1
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urlLabel:Landroid/widget/TextView;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$200()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_0
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity$MyWebViewClient;->this$0:Lorg/openobservatory/ooniprobe/activity/BrowserActivity;

    invoke-virtual {v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->reloadButtons()V

    .line 187
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "url",
            "favicon"
        }
    .end annotation

    .line 168
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 169
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->refresh:Landroid/widget/ImageView;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$100()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urlLabel:Landroid/widget/TextView;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$200()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity$MyWebViewClient;->this$0:Lorg/openobservatory/ooniprobe/activity/BrowserActivity;

    const v2, 0x7f0e005c

    invoke-virtual {v1, v2}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webViewProgressBar:Landroid/widget/ProgressBar;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$300()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webViewProgressBar:Landroid/widget/ProgressBar;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$300()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "request",
            "error"
        }
    .end annotation

    .line 192
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 193
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->refresh:Landroid/widget/ImageView;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$100()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webViewProgressBar:Landroid/widget/ProgressBar;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$300()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webViewProgressBar:Landroid/widget/ProgressBar;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$300()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity$MyWebViewClient;->this$0:Lorg/openobservatory/ooniprobe/activity/BrowserActivity;

    const-string v2, "Unexpected error occurred. Reload page again."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "request",
            "errorResponse"
        }
    .end annotation

    .line 202
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 203
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->refresh:Landroid/widget/ImageView;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$100()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webViewProgressBar:Landroid/widget/ProgressBar;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$300()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webViewProgressBar:Landroid/widget/ProgressBar;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$300()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "handler",
            "error"
        }
    .end annotation

    .line 214
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 215
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->refresh:Landroid/widget/ImageView;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$100()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webViewProgressBar:Landroid/widget/ProgressBar;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$300()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    # getter for: Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webViewProgressBar:Landroid/widget/ProgressBar;
    invoke-static {}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->access$300()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity$MyWebViewClient;->this$0:Lorg/openobservatory/ooniprobe/activity/BrowserActivity;

    const-string v2, "Unexpected SSL error occurred. Reload page again."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    .line 161
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x1

    return v0
.end method
