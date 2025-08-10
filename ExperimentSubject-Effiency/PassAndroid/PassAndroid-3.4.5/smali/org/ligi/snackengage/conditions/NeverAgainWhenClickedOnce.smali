.class public Lorg/ligi/snackengage/conditions/NeverAgainWhenClickedOnce;
.super Ljava/lang/Object;
.source "NeverAgainWhenClickedOnce.java"

# interfaces
.implements Lorg/ligi/snackengage/conditions/SnackCondition;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAppropriate(Lorg/ligi/snackengage/SnackContext;Lorg/ligi/snackengage/snacks/Snack;)Z
    .locals 1
    .param p1, "context"    # Lorg/ligi/snackengage/SnackContext;
    .param p2, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    .line 10
    invoke-virtual {p1}, Lorg/ligi/snackengage/SnackContext;->getStats()Lorg/ligi/snackengage/stats/SnackStats;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/ligi/snackengage/stats/SnackStats;->wasSnackEverClicked(Lorg/ligi/snackengage/snacks/Snack;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
