.class Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$3;
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
    .line 24
    iput-object p1, p0, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$3;->this$0:Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 27
    iget-object v1, p0, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$3;->this$0:Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v1

    const-string v2, "URLRewrite with invalid activity"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Z)V

    .line 28
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$3;->this$0:Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;

    const-class v2, Lorg/ligi/passandroid/ui/quirk_fix/OpenIphoneWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$3;->this$0:Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 30
    iget-object v1, p0, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$3;->this$0:Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;

    invoke-virtual {v1, v0}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method
