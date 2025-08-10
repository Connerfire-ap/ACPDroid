.class public Lorg/ligi/snackengage/snacks/BetaTestSnack;
.super Lorg/ligi/snackengage/snacks/OpenURLSnack;
.source "BetaTestSnack.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 8
    const-string v0, "BETA_TEST"

    invoke-direct {p0, p1, v0}, Lorg/ligi/snackengage/snacks/OpenURLSnack;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public getActionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget v0, Lorg/ligi/snackengage/R$string;->betatest_snack_action:I

    invoke-virtual {p0, v0}, Lorg/ligi/snackengage/snacks/BetaTestSnack;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget v0, Lorg/ligi/snackengage/R$string;->betatest_snack_msg:I

    invoke-virtual {p0, v0}, Lorg/ligi/snackengage/snacks/BetaTestSnack;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
