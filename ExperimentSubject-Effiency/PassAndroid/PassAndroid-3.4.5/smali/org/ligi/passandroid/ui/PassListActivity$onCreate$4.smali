.class final Lorg/ligi/passandroid/ui/PassListActivity$onCreate$4;
.super Ljava/lang/Object;
.source "PassListActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassListActivity;->onCreate(Landroid/os/Bundle;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
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

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassListActivity$onCreate$4;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListActivity$onCreate$4;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    const-string v1, "http://espass.it/examples"

    invoke-static {v0, v1}, Lorg/ligi/kaxt/ContextExtensionsKt;->startActivityFromURL(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListActivity$onCreate$4;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    sget v1, Lorg/ligi/passandroid/R$id;->fam:I

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/PassListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->collapse()V

    .line 201
    return-void
.end method
