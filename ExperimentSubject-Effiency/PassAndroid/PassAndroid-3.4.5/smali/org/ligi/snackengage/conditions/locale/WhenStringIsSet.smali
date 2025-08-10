.class public Lorg/ligi/snackengage/conditions/locale/WhenStringIsSet;
.super Ljava/lang/Object;
.source "WhenStringIsSet.java"

# interfaces
.implements Lorg/ligi/snackengage/conditions/SnackCondition;


# instance fields
.field protected final StringResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "stringResId"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lorg/ligi/snackengage/conditions/locale/WhenStringIsSet;->StringResId:I

    .line 15
    return-void
.end method


# virtual methods
.method public isAppropriate(Lorg/ligi/snackengage/SnackContext;Lorg/ligi/snackengage/snacks/Snack;)Z
    .locals 3
    .param p1, "context"    # Lorg/ligi/snackengage/SnackContext;
    .param p2, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    .line 20
    :try_start_0
    invoke-virtual {p1}, Lorg/ligi/snackengage/SnackContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lorg/ligi/snackengage/conditions/locale/WhenStringIsSet;->StringResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    const/4 v1, 0x1

    .line 23
    :goto_0
    return v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "nfe":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method
