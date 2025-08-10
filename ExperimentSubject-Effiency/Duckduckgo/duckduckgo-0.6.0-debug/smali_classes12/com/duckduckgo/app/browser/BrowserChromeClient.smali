.class public final Lcom/duckduckgo/app/browser/BrowserChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "BrowserChromeClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/duckduckgo/app/browser/BrowserChromeClient;",
        "Landroid/webkit/WebChromeClient;",
        "()V",
        "webViewClientListener",
        "Lcom/duckduckgo/app/browser/WebViewClientListener;",
        "getWebViewClientListener",
        "()Lcom/duckduckgo/app/browser/WebViewClientListener;",
        "setWebViewClientListener",
        "(Lcom/duckduckgo/app/browser/WebViewClientListener;)V",
        "onProgressChanged",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "newProgress",
        "",
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
.field private webViewClientListener:Lcom/duckduckgo/app/browser/WebViewClientListener;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/BrowserChromeClient;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x24d3335aeafe03a1L    # -1.5970241364148315E131

    const/4 v2, 0x6

    const-string v3, "com/duckduckgo/app/browser/BrowserChromeClient"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/BrowserChromeClient;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserChromeClient;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public final getWebViewClientListener()Lcom/duckduckgo/app/browser/WebViewClientListener;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserChromeClient;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserChromeClient;->webViewClientListener:Lcom/duckduckgo/app/browser/WebViewClientListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserChromeClient;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserChromeClient;->webViewClientListener:Lcom/duckduckgo/app/browser/WebViewClientListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Lcom/duckduckgo/app/browser/WebViewClientListener;->progressChanged(I)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    .line 30
    :goto_0
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void
.end method

.method public final setWebViewClientListener(Lcom/duckduckgo/app/browser/WebViewClientListener;)V
    .locals 2
    .param p1, "<set-?>"    # Lcom/duckduckgo/app/browser/WebViewClientListener;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserChromeClient;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    iput-object p1, p0, Lcom/duckduckgo/app/browser/BrowserChromeClient;->webViewClientListener:Lcom/duckduckgo/app/browser/WebViewClientListener;

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    return-void
.end method
