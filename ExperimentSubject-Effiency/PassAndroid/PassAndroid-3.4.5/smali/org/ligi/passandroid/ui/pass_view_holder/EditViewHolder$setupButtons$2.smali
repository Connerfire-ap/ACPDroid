.class final Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder$setupButtons$2;
.super Ljava/lang/Object;
.source "EditViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->setupButtons(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/Pass;)V
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
.field final synthetic this$0:Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder$setupButtons$2;->this$0:Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 50
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder$setupButtons$2;->this$0:Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/pass_view_holder/EditViewHolder;->getView()Landroid/support/v7/widget/CardView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Not yet available"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 51
    return-void
.end method
