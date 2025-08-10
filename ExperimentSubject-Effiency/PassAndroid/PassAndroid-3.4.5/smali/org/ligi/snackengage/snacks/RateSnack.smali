.class public Lorg/ligi/snackengage/snacks/RateSnack;
.super Lorg/ligi/snackengage/snacks/AbstractOpenURLSnack;
.source "RateSnack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/ligi/snackengage/snacks/AbstractOpenURLSnack;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget v0, Lorg/ligi/snackengage/R$string;->rate_snack_action:I

    invoke-virtual {p0, v0}, Lorg/ligi/snackengage/snacks/RateSnack;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string v0, "RATE_SNACK"

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget v0, Lorg/ligi/snackengage/R$string;->rate_snack_msg:I

    invoke-virtual {p0, v0}, Lorg/ligi/snackengage/snacks/RateSnack;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/ligi/snackengage/snacks/RateSnack;->snackContext:Lorg/ligi/snackengage/SnackContext;

    invoke-virtual {v0}, Lorg/ligi/snackengage/SnackContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ligi/snackengage/snacks/RateSnack;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
