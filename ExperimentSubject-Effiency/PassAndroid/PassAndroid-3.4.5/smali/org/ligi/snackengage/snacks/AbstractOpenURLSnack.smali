.class public abstract Lorg/ligi/snackengage/snacks/AbstractOpenURLSnack;
.super Lorg/ligi/snackengage/snacks/BaseSnack;
.source "AbstractOpenURLSnack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/ligi/snackengage/snacks/BaseSnack;-><init>()V

    return-void
.end method


# virtual methods
.method public engage()V
    .locals 5

    .prologue
    .line 16
    invoke-super {p0}, Lorg/ligi/snackengage/snacks/BaseSnack;->engage()V

    .line 18
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lorg/ligi/snackengage/snacks/AbstractOpenURLSnack;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 19
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    iget-object v2, p0, Lorg/ligi/snackengage/snacks/AbstractOpenURLSnack;->snackContext:Lorg/ligi/snackengage/SnackContext;

    invoke-virtual {v2}, Lorg/ligi/snackengage/SnackContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lorg/ligi/snackengage/snacks/AbstractOpenURLSnack;->snackContext:Lorg/ligi/snackengage/SnackContext;

    invoke-virtual {v2}, Lorg/ligi/snackengage/SnackContext;->getRootView()Landroid/view/View;

    move-result-object v2

    sget v3, Lorg/ligi/snackengage/R$string;->err_no_activity:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0
.end method

.method protected abstract getUri()Landroid/net/Uri;
.end method
