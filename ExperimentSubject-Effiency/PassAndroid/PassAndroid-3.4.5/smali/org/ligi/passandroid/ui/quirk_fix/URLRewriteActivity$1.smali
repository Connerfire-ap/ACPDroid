.class Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$1;
.super Ljava/lang/Object;
.source "URLRewriteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$1;->this$0:Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$1;->this$0:Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;->finish()V

    .line 52
    return-void
.end method
