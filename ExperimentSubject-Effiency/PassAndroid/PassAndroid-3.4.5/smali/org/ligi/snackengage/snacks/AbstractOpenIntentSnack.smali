.class public abstract Lorg/ligi/snackengage/snacks/AbstractOpenIntentSnack;
.super Lorg/ligi/snackengage/snacks/BaseSnack;
.source "AbstractOpenIntentSnack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/ligi/snackengage/snacks/BaseSnack;-><init>()V

    return-void
.end method


# virtual methods
.method public engage()V
    .locals 4

    .prologue
    .line 15
    invoke-super {p0}, Lorg/ligi/snackengage/snacks/BaseSnack;->engage()V

    .line 17
    :try_start_0
    iget-object v1, p0, Lorg/ligi/snackengage/snacks/AbstractOpenIntentSnack;->snackContext:Lorg/ligi/snackengage/SnackContext;

    invoke-virtual {v1}, Lorg/ligi/snackengage/SnackContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ligi/snackengage/snacks/AbstractOpenIntentSnack;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lorg/ligi/snackengage/snacks/AbstractOpenIntentSnack;->snackContext:Lorg/ligi/snackengage/SnackContext;

    invoke-virtual {v1}, Lorg/ligi/snackengage/SnackContext;->getRootView()Landroid/view/View;

    move-result-object v1

    sget v2, Lorg/ligi/snackengage/R$string;->err_no_activity:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0
.end method

.method protected abstract getIntent()Landroid/content/Intent;
.end method
