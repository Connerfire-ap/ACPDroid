.class public Lorg/ligi/snackengage/snacks/TranslateSnack;
.super Lorg/ligi/snackengage/snacks/OpenURLSnack;
.source "TranslateSnack.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 9
    const-string v0, "TRANSLATE"

    invoke-direct {p0, p1, v0}, Lorg/ligi/snackengage/snacks/OpenURLSnack;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getActionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget v0, Lorg/ligi/snackengage/R$string;->translate_snack_action:I

    invoke-virtual {p0, v0}, Lorg/ligi/snackengage/snacks/TranslateSnack;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget v0, Lorg/ligi/snackengage/R$string;->translate_snack_msg:I

    invoke-virtual {p0, v0}, Lorg/ligi/snackengage/snacks/TranslateSnack;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
