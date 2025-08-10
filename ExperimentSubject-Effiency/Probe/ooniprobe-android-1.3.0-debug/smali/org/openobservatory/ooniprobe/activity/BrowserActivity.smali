.class public Lorg/openobservatory/ooniprobe/activity/BrowserActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openobservatory/ooniprobe/activity/BrowserActivity$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowserActivity"

.field private static back:Landroid/widget/ImageView;

.field private static close:Landroid/widget/ImageView;

.field private static forward:Landroid/widget/ImageView;

.field private static refresh:Landroid/widget/ImageView;

.field private static share:Landroid/widget/ImageView;

.field private static try_mirror:Landroid/widget/Button;

.field private static urlIndex:I

.field private static urlLabel:Landroid/widget/TextView;

.field private static urls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static webView:Landroid/webkit/WebView;

.field private static webViewProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urlIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private LoadWebViewUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->isInternetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_0
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->refresh:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    const/4 v0, 0x1

    const-string v1, "There is no internet connection. Please enable your internet connection."

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    :goto_0
    return-void
.end method

.method static synthetic access$100()Landroid/widget/ImageView;
    .locals 1

    .line 38
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->refresh:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200()Landroid/widget/TextView;
    .locals 1

    .line 38
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urlLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300()Landroid/widget/ProgressBar;
    .locals 1

    .line 38
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webViewProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private initViews()V
    .locals 2

    .line 75
    const v0, 0x7f080100

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->back:Landroid/widget/ImageView;

    .line 76
    const v0, 0x7f080102

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->forward:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f080103

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->refresh:Landroid/widget/ImageView;

    .line 78
    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->close:Landroid/widget/ImageView;

    .line 79
    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webViewProgressBar:Landroid/widget/ProgressBar;

    .line 80
    const v0, 0x7f0800f4

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urlLabel:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->share:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f0800f1

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->try_mirror:Landroid/widget/Button;

    .line 83
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->try_mirror:Landroid/widget/Button;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    :cond_0
    return-void
.end method

.method private isWebViewCanGoBack()V
    .locals 1

    .line 263
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 265
    :cond_0
    return-void
.end method

.method private setListeners()V
    .locals 1

    .line 100
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->forward:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->refresh:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->close:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->share:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->try_mirror:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method private setUpWebView()V
    .locals 3

    .line 89
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    sput-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webView:Landroid/webkit/WebView;

    .line 90
    new-instance v1, Lorg/openobservatory/ooniprobe/activity/BrowserActivity$MyWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity$MyWebViewClient;-><init>(Lorg/openobservatory/ooniprobe/activity/BrowserActivity;Lorg/openobservatory/ooniprobe/activity/BrowserActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 91
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 92
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 93
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 94
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urls:Ljava/util/ArrayList;

    sget v2, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urlIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrowserActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urls:Ljava/util/ArrayList;

    sget v1, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urlIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->LoadWebViewUrl(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private shareUrl()V
    .locals 3

    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    sget-object v1, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    return-void
.end method

.method private tryMirror()V
    .locals 2

    .line 250
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    sget v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urlIndex:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 253
    sget v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urlIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urlIndex:I

    .line 254
    sget-object v1, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->LoadWebViewUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, 0x0

    sput v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urlIndex:I

    .line 258
    sget-object v1, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->LoadWebViewUrl(Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newBase"
        }
    .end annotation

    .line 155
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 156
    return-void
.end method

.method public isInternetConnected()Z
    .locals 3

    .line 270
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 271
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 272
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    const/4 v2, 0x1

    return v2

    .line 275
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 138
    :sswitch_0
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "url":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->LoadWebViewUrl(Ljava/lang/String;)V

    .line 140
    goto :goto_0

    .line 134
    .end local v0    # "url":Ljava/lang/String;
    :sswitch_1
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 142
    :sswitch_2
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->finish()V

    .line 143
    goto :goto_0

    .line 131
    :sswitch_3
    invoke-direct {p0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->isWebViewCanGoBack()V

    .line 132
    goto :goto_0

    .line 148
    :sswitch_4
    invoke-direct {p0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->tryMirror()V

    goto :goto_0

    .line 145
    :sswitch_5
    invoke-direct {p0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->shareUrl()V

    .line 146
    nop

    .line 151
    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0800bc -> :sswitch_5
        0x7f0800f1 -> :sswitch_4
        0x7f080100 -> :sswitch_3
        0x7f080101 -> :sswitch_2
        0x7f080102 -> :sswitch_1
        0x7f080103 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->setContentView(I)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urls:Ljava/util/ArrayList;

    .line 54
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "payload"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "payload":Lorg/json/JSONObject;
    const-string v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "href":Ljava/lang/String;
    sget-object v2, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v2, "alt_hrefs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 58
    .local v2, "alt_hrefs":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 60
    sget-object v4, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urls:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    .end local v3    # "i":I
    :cond_0
    const-string v3, "BrowserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message data urls: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->urls:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    nop

    .end local v0    # "payload":Lorg/json/JSONObject;
    .end local v1    # "href":Ljava/lang/String;
    .end local v2    # "alt_hrefs":Lorg/json/JSONArray;
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->finish()V

    .line 68
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-direct {p0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->initViews()V

    .line 69
    invoke-direct {p0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->setUpWebView()V

    .line 70
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->reloadButtons()V

    .line 71
    invoke-direct {p0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->setListeners()V

    .line 72
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 234
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 235
    invoke-direct {p0}, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->isWebViewCanGoBack()V

    .line 236
    const/4 v0, 0x1

    return v0

    .line 238
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method reloadButtons()V
    .locals 5

    .line 109
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 111
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    .line 114
    :cond_0
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 115
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->back:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 117
    :goto_0
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->forward:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 119
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->forward:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_1

    .line 122
    :cond_1
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->forward:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 123
    sget-object v0, Lorg/openobservatory/ooniprobe/activity/BrowserActivity;->forward:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 125
    :goto_1
    return-void
.end method
