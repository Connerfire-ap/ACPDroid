.class public Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;
.super Lorg/ligi/passandroid/ui/PassAndroidActivity;
.source "URLRewriteActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/PassAndroidActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lorg/ligi/passandroid/ui/PassAndroidActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    new-instance v2, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteController;

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteController;-><init>(Lorg/ligi/passandroid/Tracker;)V

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteController;->getUrlByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "url":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 20
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Workaround failed"

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "The URL PassAndroid tried to work around failed :-( some companies just send PassBooks to Apple Devices - this was an attempt to workaround this.Unfortunately it failed - perhaps there where changes on the serverside - you can open the site with your browser now - to see it in PassAndroid in future again it would help if you can send me the pass"

    .line 21
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Browser"

    new-instance v4, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$3;

    invoke-direct {v4, p0}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$3;-><init>(Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;)V

    .line 24
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "send"

    new-instance v4, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$2;

    invoke-direct {v4, p0}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$2;-><init>(Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;)V

    .line 34
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "cancel"

    new-instance v4, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$1;

    invoke-direct {v4, p0}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity$1;-><init>(Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;)V

    .line 48
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 63
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/ligi/passandroid/ui/PassImportActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/quirk_fix/URLRewriteActivity;->finish()V

    goto :goto_0
.end method
