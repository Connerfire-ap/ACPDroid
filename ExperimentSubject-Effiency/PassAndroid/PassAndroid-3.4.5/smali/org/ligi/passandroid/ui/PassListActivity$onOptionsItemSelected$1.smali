.class final Lorg/ligi/passandroid/ui/PassListActivity$onOptionsItemSelected$1;
.super Ljava/lang/Object;
.source "PassListActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "which",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassListActivity;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassListActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassListActivity$onOptionsItemSelected$1;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 220
    new-instance v1, Lorg/ligi/passandroid/model/PassStoreProjection;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassListActivity$onOptionsItemSelected$1;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassListActivity;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    .line 221
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassListActivity$onOptionsItemSelected$1;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    const v4, 0x7f0700a7

    invoke-virtual {v3, v4}, Lorg/ligi/passandroid/ui/PassListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.topic_trash)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    const/4 v4, 0x0

    .line 220
    invoke-direct {v1, v2, v3, v4}, Lorg/ligi/passandroid/model/PassStoreProjection;-><init>(Lorg/ligi/passandroid/model/PassStore;Ljava/lang/String;Lorg/ligi/passandroid/model/comparator/PassSortOrder;)V

    .line 224
    .local v1, "passStoreProjection":Lorg/ligi/passandroid/model/PassStoreProjection;
    invoke-virtual {v1}, Lorg/ligi/passandroid/model/PassStoreProjection;->getPassList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/model/pass/Pass;

    .line 225
    .local v0, "pass":Lorg/ligi/passandroid/model/pass/Pass;
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassListActivity$onOptionsItemSelected$1;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    invoke-virtual {v3}, Lorg/ligi/passandroid/ui/PassListActivity;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v3

    invoke-interface {v0}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/ligi/passandroid/model/PassStore;->deletePassWithId(Ljava/lang/String;)Z

    goto :goto_0

    .line 227
    .end local v0    # "pass":Lorg/ligi/passandroid/model/pass/Pass;
    :cond_0
    return-void
.end method
