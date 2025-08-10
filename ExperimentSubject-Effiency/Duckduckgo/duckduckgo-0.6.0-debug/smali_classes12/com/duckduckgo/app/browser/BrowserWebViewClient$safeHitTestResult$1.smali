.class final Lcom/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1;
.super Ljava/lang/Object;
.source "BrowserWebViewClient.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/browser/BrowserWebViewClient;->safeHitTestResult(Landroid/webkit/WebView;)Landroid/webkit/WebView$HitTestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroid/webkit/WebView$HitTestResult;",
        "kotlin.jvm.PlatformType",
        "webView",
        "Landroid/webkit/WebView;",
        "apply"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z

.field public static final INSTANCE:Lcom/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3c13ee9275417803L    # -1.6180145202684488E19

    const/4 v2, 0x5

    const-string v3, "com/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Lcom/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1;

    invoke-direct {v1}, Lcom/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1;-><init>()V

    sput-object v1, Lcom/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1;->INSTANCE:Lcom/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1;

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1;->$jacocoInit()[Z

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public final apply(Landroid/webkit/WebView;)Landroid/webkit/WebView$HitTestResult;
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "webView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-boolean v1, v0, v1

    .line 105
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v2

    const/4 v3, 0x2

    aput-boolean v1, v0, v3

    return-object v2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1;->$jacocoInit()[Z

    move-result-object v0

    .line 35
    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/browser/BrowserWebViewClient$safeHitTestResult$1;->apply(Landroid/webkit/WebView;)Landroid/webkit/WebView$HitTestResult;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method
