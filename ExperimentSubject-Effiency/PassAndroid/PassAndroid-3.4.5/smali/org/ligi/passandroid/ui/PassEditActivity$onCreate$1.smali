.class final Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;
.super Ljava/lang/Object;
.source "PassEditActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassEditActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassEditActivity;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassEditActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 57
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;->this$0:Lorg/ligi/passandroid/ui/PassEditActivity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f080000

    new-instance v0, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1$1;

    invoke-direct {v0, p0}, Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1$1;-><init>(Lorg/ligi/passandroid/ui/PassEditActivity$onCreate$1;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 64
    return-void
.end method
