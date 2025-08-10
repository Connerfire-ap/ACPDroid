.class Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$2;
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
    .line 34
    iput-object p1, p0, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$2;->this$0:Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "PassAndroid: URLRewrite Problem"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ligi@ligi.de"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$2;->this$0:Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$2;->this$0:Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;

    const-string v2, "How to send Link?"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    iget-object v1, p0, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$2;->this$0:Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;->finish()V

    .line 46
    return-void
.end method
