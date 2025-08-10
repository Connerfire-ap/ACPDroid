.class public final Lorg/ligi/passandroid/ui/quirk_fix/OpenIphoneWebView;
.super Landroid/app/Activity;
.source "OpenIphoneWebView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/quirk_fix/OpenIphoneWebView;",
        "Landroid/app/Activity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/ligi/passandroid/ui/quirk_fix/OpenIphoneWebView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ligi/passandroid/ui/quirk_fix/OpenIphoneWebView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/ligi/passandroid/ui/quirk_fix/OpenIphoneWebView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/quirk_fix/OpenIphoneWebView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/ui/quirk_fix/OpenIphoneWebView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/ui/quirk_fix/OpenIphoneWebView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v2, Landroid/webkit/WebView;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 20
    .local v2, "webView":Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string v4, "webView.settings"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lorg/ligi/passandroid/functions/InputStreamProviderKt;->getIPHONE_USER_AGENT()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string v4, "webView.settings"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 24
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/quirk_fix/OpenIphoneWebView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "intent"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move-object v3, v2

    .line 25
    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Lorg/ligi/passandroid/ui/quirk_fix/OpenIphoneWebView;->setContentView(Landroid/view/View;)V

    move-object v3, p0

    .line 27
    check-cast v3, Landroid/content/Context;

    const v4, 0x7f0b002e

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 28
    .local v0, "backgroundColor":I
    new-instance v3, Lnet/steamcrafted/loadtoast/LoadToast;

    check-cast p0, Landroid/content/Context;

    .end local p0    # "this":Lorg/ligi/passandroid/ui/quirk_fix/OpenIphoneWebView;
    invoke-direct {v3, p0}, Lnet/steamcrafted/loadtoast/LoadToast;-><init>(Landroid/content/Context;)V

    const-string v4, "Loading"

    invoke-virtual {v3, v4}, Lnet/steamcrafted/loadtoast/LoadToast;->setText(Ljava/lang/String;)Lnet/steamcrafted/loadtoast/LoadToast;

    move-result-object v3

    invoke-virtual {v3, v0}, Lnet/steamcrafted/loadtoast/LoadToast;->setBackgroundColor(I)Lnet/steamcrafted/loadtoast/LoadToast;

    move-result-object v3

    invoke-virtual {v3}, Lnet/steamcrafted/loadtoast/LoadToast;->show()Lnet/steamcrafted/loadtoast/LoadToast;

    move-result-object v1

    .line 30
    .local v1, "loadToast":Lnet/steamcrafted/loadtoast/LoadToast;
    new-instance v3, Lorg/ligi/passandroid/ui/quirk_fix/OpenIphoneWebView$onCreate$1;

    invoke-direct {v3, v1}, Lorg/ligi/passandroid/ui/quirk_fix/OpenIphoneWebView$onCreate$1;-><init>(Lnet/steamcrafted/loadtoast/LoadToast;)V

    check-cast v3, Landroid/webkit/WebViewClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 42
    return-void
.end method
