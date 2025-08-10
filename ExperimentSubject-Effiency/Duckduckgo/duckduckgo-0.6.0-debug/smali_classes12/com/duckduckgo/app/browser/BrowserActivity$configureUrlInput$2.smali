.class public final Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$2;
.super Lcom/duckduckgo/app/global/view/TextChangedWatcher;
.source "BrowserActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/browser/BrowserActivity;->configureUrlInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/duckduckgo/app/browser/BrowserActivity$configureUrlInput$2",
        "Lcom/duckduckgo/app/global/view/TextChangedWatcher;",
        "afterTextChanged",
        "",
        "editable",
        "Landroid/text/Editable;",
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
.field final synthetic this$0:Lcom/duckduckgo/app/browser/BrowserActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xb8d1b9319e4cd4bL    # -8.656870121413221E252

    const/4 v2, 0x4

    const-string v3, "com/duckduckgo/app/browser/BrowserActivity$configureUrlInput$2"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/browser/BrowserActivity;)V
    .locals 3
    .param p1, "$outer"    # Lcom/duckduckgo/app/browser/BrowserActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$2;->$jacocoInit()[Z

    move-result-object v0

    .line 166
    iput-object p1, p0, Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$2;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    invoke-direct {p0}, Lcom/duckduckgo/app/global/view/TextChangedWatcher;-><init>()V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "editable"    # Landroid/text/Editable;

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$2;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "editable"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 168
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$2;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    invoke-static {v1}, Lcom/duckduckgo/app/browser/BrowserActivity;->access$getViewModel$p(Lcom/duckduckgo/app/browser/BrowserActivity;)Lcom/duckduckgo/app/browser/BrowserViewModel;

    move-result-object v1

    iget-object v3, p0, Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$2;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    sget v4, Lcom/duckduckgo/app/browser/R$id;->urlInput:I

    invoke-virtual {v3, v4}, Lcom/duckduckgo/app/browser/BrowserActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;

    const-string v4, "urlInput"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duckduckgo/app/browser/BrowserActivity$configureUrlInput$2;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    sget v5, Lcom/duckduckgo/app/browser/R$id;->urlInput:I

    invoke-virtual {v4, v5}, Lcom/duckduckgo/app/browser/BrowserActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;

    invoke-virtual {v4}, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;->hasFocus()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/duckduckgo/app/browser/BrowserViewModel;->onUrlInputStateChanged(Ljava/lang/String;Z)V

    .line 169
    aput-boolean v2, v0, v2

    return-void
.end method
