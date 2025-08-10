.class public final Lcom/duckduckgo/app/browser/BrowserWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BrowserWebViewClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001c\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u0016J&\u0010\u0014\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u001a\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0008H\u0002J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH\u0017J\u0018\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u000e\u0010\u001f\u001a\u0004\u0018\u00010\u0008*\u00020\u0012H\u0002J\u000c\u0010 \u001a\u00020!*\u00020\u0012H\u0003R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/duckduckgo/app/browser/BrowserWebViewClient;",
        "Landroid/webkit/WebViewClient;",
        "requestRewriter",
        "Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;",
        "trackerDetector",
        "Lcom/duckduckgo/app/trackerdetection/TrackerDetector;",
        "(Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;Lcom/duckduckgo/app/trackerdetection/TrackerDetector;)V",
        "currentUrl",
        "",
        "webViewClientListener",
        "Lcom/duckduckgo/app/browser/WebViewClientListener;",
        "getWebViewClientListener",
        "()Lcom/duckduckgo/app/browser/WebViewClientListener;",
        "setWebViewClientListener",
        "(Lcom/duckduckgo/app/browser/WebViewClientListener;)V",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "onPageStarted",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "shouldBlock",
        "",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "documentUrl",
        "shouldInterceptRequest",
        "Landroid/webkit/WebResourceResponse;",
        "shouldOverrideUrlLoading",
        "elementClicked",
        "safeHitTestResult",
        "Landroid/webkit/WebView$HitTestResult;",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z


# instance fields
.field private currentUrl:Ljava/lang/String;

.field private final requestRewriter:Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;

.field private trackerDetector:Lcom/duckduckgo/app/trackerdetection/TrackerDetector;

.field private webViewClientListener:Lcom/duckduckgo/app/browser/WebViewClientListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5e87ad12e64bee70L

    const/16 v2, 0x28

    const-string v3, "com/duckduckgo/app/browser/BrowserWebViewClient"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;Lcom/duckduckgo/app/trackerdetection/TrackerDetector;)V
    .locals 3
    .param p1, "requestRewriter"    # Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;
    .param p2, "trackerDetector"    # Lcom/duckduckgo/app/trackerdetection/TrackerDetector;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "requestRewriter"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "trackerDetector"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const/16 v1, 0x26

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 38
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->requestRewriter:Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;

    iput-object p2, p0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->trackerDetector:Lcom/duckduckgo/app/trackerdetection/TrackerDetector;

    const/16 v1, 0x27

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final elementClicked(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 4
    .param p1, "$this$elementClicked"    # Landroid/webkit/WebView;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    invoke-direct {p0, p1}, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->safeHitTestResult(Landroid/webkit/WebView;)Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x21

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private final safeHitTestResult(Landroid/webkit/WebView;)Landroid/webkit/WebView$HitTestResult;
    .locals 4
    .param p1, "$this$safeHitTestResult"    # Landroid/webkit/WebView;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->$jacocoInit()[Z

    move-result-object v0

    .line 102
    nop

    .line 107
    nop

    .line 102
    nop

    .line 104
    nop

    .line 102
    nop

    .line 103
    nop

    .line 102
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0x22

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 103
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0x23

    aput-boolean v3, v0, v2

    .line 104
    sget-object v2, Lcom/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1;->INSTANCE:Lcom/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1;

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const/16 v2, 0x24

    aput-boolean v3, v0, v2

    .line 107
    invoke-virtual {v1}, Lio/reactivex/Observable;->blockingFirst()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Observable.just(this)\n  \u2026         .blockingFirst()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/webkit/WebView$HitTestResult;

    const/16 v2, 0x25

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private final shouldBlock(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)Z
    .locals 6
    .param p1, "request"    # Landroid/webkit/WebResourceRequest;
    .param p2, "documentUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->$jacocoInit()[Z

    move-result-object v0

    .line 83
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request.url.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .local v1, "url":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_0

    .line 86
    const/16 v4, 0x1b

    aput-boolean v3, v0, v4

    return v2

    .line 89
    :cond_0
    iget-object v4, p0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->trackerDetector:Lcom/duckduckgo/app/trackerdetection/TrackerDetector;

    sget-object v5, Lcom/duckduckgo/app/trackerdetection/model/ResourceType;->Companion:Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;

    invoke-virtual {v5, p1}, Lcom/duckduckgo/app/trackerdetection/model/ResourceType$Companion;->from(Landroid/webkit/WebResourceRequest;)Lcom/duckduckgo/app/trackerdetection/model/ResourceType;

    move-result-object v5

    invoke-virtual {v4, v1, p2, v5}, Lcom/duckduckgo/app/trackerdetection/TrackerDetector;->evaluate(Ljava/lang/String;Ljava/lang/String;Lcom/duckduckgo/app/trackerdetection/model/ResourceType;)Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;

    move-result-object v4

    if-eqz v4, :cond_2

    const/16 v2, 0x1d

    aput-boolean v3, v0, v2

    move-object v2, v4

    .line 90
    .local v2, "trackingEvent":Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;
    iget-object v4, p0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->webViewClientListener:Lcom/duckduckgo/app/browser/WebViewClientListener;

    if-eqz v4, :cond_1

    invoke-interface {v4, v2}, Lcom/duckduckgo/app/browser/WebViewClientListener;->trackerDetected(Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;)V

    const/16 v4, 0x1e

    aput-boolean v3, v0, v4

    goto :goto_0

    :cond_1
    const/16 v4, 0x1f

    aput-boolean v3, v0, v4

    .line 92
    :goto_0
    invoke-virtual {v2}, Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;->getBlocked()Z

    move-result v4

    const/16 v5, 0x20

    aput-boolean v3, v0, v5

    return v4

    .line 89
    .end local v2    # "trackingEvent":Lcom/duckduckgo/app/trackerdetection/model/TrackingEvent;
    :cond_2
    const/16 v4, 0x1c

    aput-boolean v3, v0, v4

    return v2
.end method


# virtual methods
.method public final getWebViewClientListener()Lcom/duckduckgo/app/browser/WebViewClientListener;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->webViewClientListener:Lcom/duckduckgo/app/browser/WebViewClientListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->webViewClientListener:Lcom/duckduckgo/app/browser/WebViewClientListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/duckduckgo/app/browser/WebViewClientListener;->loadingFinished()V

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    .line 61
    :goto_0
    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->$jacocoInit()[Z

    move-result-object v0

    .line 54
    iput-object p2, p0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->currentUrl:Ljava/lang/String;

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 55
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->webViewClientListener:Lcom/duckduckgo/app/browser/WebViewClientListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/duckduckgo/app/browser/WebViewClientListener;->loadingStarted()V

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->webViewClientListener:Lcom/duckduckgo/app/browser/WebViewClientListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Lcom/duckduckgo/app/browser/WebViewClientListener;->urlChanged(Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    .line 57
    :goto_1
    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    return-void
.end method

.method public final setWebViewClientListener(Lcom/duckduckgo/app/browser/WebViewClientListener;)V
    .locals 2
    .param p1, "<set-?>"    # Lcom/duckduckgo/app/browser/WebViewClientListener;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iput-object p1, p0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->webViewClientListener:Lcom/duckduckgo/app/browser/WebViewClientListener;

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "request"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intercepting resource "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    .line 67
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "request.url"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/duckduckgo/app/global/UriExtensionKt;->isHttp(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    .line 68
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->webViewClientListener:Lcom/duckduckgo/app/browser/WebViewClientListener;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/duckduckgo/app/browser/WebViewClientListener;->pageHasHttpResources()V

    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_2
    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    .line 71
    :goto_0
    invoke-direct {p0, p1}, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->elementClicked(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 72
    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    return-object v3

    .line 75
    :cond_3
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->currentUrl:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->shouldBlock(Landroid/webkit/WebResourceRequest;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    .line 76
    new-instance v1, Landroid/webkit/WebResourceResponse;

    invoke-direct {v1, v3, v3, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    const/16 v3, 0x19

    aput-boolean v2, v0, v3

    return-object v1

    .line 79
    :cond_4
    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    return-object v3
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "request"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 45
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->requestRewriter:Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;

    invoke-virtual {v1, p2}, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->shouldRewriteRequest(Landroid/webkit/WebResourceRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 46
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserWebViewClient;->requestRewriter:Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "request.url"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/duckduckgo/app/browser/DuckDuckGoRequestRewriter;->rewriteRequestWithCustomQueryParams(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "newUri":Landroid/net/Uri;
    const/4 v3, 0x4

    aput-boolean v2, v0, v3

    .line 47
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 48
    const/4 v3, 0x5

    aput-boolean v2, v0, v3

    return v2

    .line 50
    .end local v1    # "newUri":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x6

    aput-boolean v2, v0, v3

    return v1
.end method
