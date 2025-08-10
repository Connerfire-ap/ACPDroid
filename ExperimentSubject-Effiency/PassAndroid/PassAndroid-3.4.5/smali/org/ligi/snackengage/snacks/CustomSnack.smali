.class public Lorg/ligi/snackengage/snacks/CustomSnack;
.super Lorg/ligi/snackengage/snacks/AbstractOpenIntentSnack;
.source "CustomSnack.java"


# instance fields
.field private final mActionText:Ljava/lang/String;

.field private final mIntent:Landroid/content/Intent;

.field private final mTitleText:Ljava/lang/String;

.field private final uniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "titleText"    # Ljava/lang/String;
    .param p3, "actionText"    # Ljava/lang/String;
    .param p4, "uniqueId"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/ligi/snackengage/snacks/AbstractOpenIntentSnack;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/ligi/snackengage/snacks/CustomSnack;->mIntent:Landroid/content/Intent;

    .line 14
    iput-object p3, p0, Lorg/ligi/snackengage/snacks/CustomSnack;->mActionText:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lorg/ligi/snackengage/snacks/CustomSnack;->mTitleText:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lorg/ligi/snackengage/snacks/CustomSnack;->uniqueId:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getActionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/ligi/snackengage/snacks/CustomSnack;->mActionText:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/ligi/snackengage/snacks/CustomSnack;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/ligi/snackengage/snacks/CustomSnack;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/ligi/snackengage/snacks/CustomSnack;->mTitleText:Ljava/lang/String;

    return-object v0
.end method
