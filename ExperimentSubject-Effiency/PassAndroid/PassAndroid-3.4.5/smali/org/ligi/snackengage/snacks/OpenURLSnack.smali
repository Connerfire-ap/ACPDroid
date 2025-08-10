.class public Lorg/ligi/snackengage/snacks/OpenURLSnack;
.super Lorg/ligi/snackengage/snacks/AbstractOpenURLSnack;
.source "OpenURLSnack.java"


# instance fields
.field private final uniqueId:Ljava/lang/String;

.field private final uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/ligi/snackengage/snacks/AbstractOpenURLSnack;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/ligi/snackengage/snacks/OpenURLSnack;->uriString:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lorg/ligi/snackengage/snacks/OpenURLSnack;->uniqueId:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getActionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget v0, Lorg/ligi/snackengage/R$string;->url_snack_action:I

    invoke-virtual {p0, v0}, Lorg/ligi/snackengage/snacks/OpenURLSnack;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lorg/ligi/snackengage/snacks/OpenURLSnack;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget v0, Lorg/ligi/snackengage/R$string;->url_snack_msg:I

    invoke-virtual {p0, v0}, Lorg/ligi/snackengage/snacks/OpenURLSnack;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/ligi/snackengage/snacks/OpenURLSnack;->uriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
