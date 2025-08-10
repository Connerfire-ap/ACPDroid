.class final Lcom/duckduckgo/app/browser/BrowserActivity$showClearButton$1;
.super Ljava/lang/Object;
.source "BrowserActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duckduckgo/app/browser/BrowserActivity;->showClearButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
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


# instance fields
.field final synthetic this$0:Lcom/duckduckgo/app/browser/BrowserActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/browser/BrowserActivity$showClearButton$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7d74c89d60f57bacL

    const/4 v2, 0x3

    const-string v3, "com/duckduckgo/app/browser/BrowserActivity$showClearButton$1"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/browser/BrowserActivity$showClearButton$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/duckduckgo/app/browser/BrowserActivity;)V
    .locals 2

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$showClearButton$1;->$jacocoInit()[Z

    move-result-object v0

    iput-object p1, p0, Lcom/duckduckgo/app/browser/BrowserActivity$showClearButton$1;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/duckduckgo/app/browser/BrowserActivity$showClearButton$1;->$jacocoInit()[Z

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserActivity$showClearButton$1;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    sget v2, Lcom/duckduckgo/app/browser/R$id;->clearUrlButton:I

    invoke-virtual {v1, v2}, Lcom/duckduckgo/app/browser/BrowserActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "clearUrlButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->show(Landroid/view/View;)Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 126
    iget-object v1, p0, Lcom/duckduckgo/app/browser/BrowserActivity$showClearButton$1;->this$0:Lcom/duckduckgo/app/browser/BrowserActivity;

    sget v3, Lcom/duckduckgo/app/browser/R$id;->urlInput:I

    invoke-virtual {v1, v3}, Lcom/duckduckgo/app/browser/BrowserActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/browser/omnibar/KeyboardAwareEditText;

    const-string v3, "urlInput"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    const/16 v1, 0x28

    invoke-static {v1}, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->toPx(I)I

    move-result v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/duckduckgo/app/global/view/ViewExtensionKt;->updatePadding$default(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 127
    aput-boolean v2, v0, v2

    return-void
.end method
