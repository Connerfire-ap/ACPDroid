.class public Lorg/ligi/snackengage/conditions/AfterNumberOfOpportunities;
.super Ljava/lang/Object;
.source "AfterNumberOfOpportunities.java"

# interfaces
.implements Lorg/ligi/snackengage/conditions/SnackCondition;


# instance fields
.field private final number:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lorg/ligi/snackengage/conditions/AfterNumberOfOpportunities;->number:I

    .line 12
    return-void
.end method


# virtual methods
.method public isAppropriate(Lorg/ligi/snackengage/SnackContext;Lorg/ligi/snackengage/snacks/Snack;)Z
    .locals 4
    .param p1, "context"    # Lorg/ligi/snackengage/SnackContext;
    .param p2, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    .line 16
    invoke-virtual {p1}, Lorg/ligi/snackengage/SnackContext;->getStats()Lorg/ligi/snackengage/stats/SnackStats;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/ligi/snackengage/stats/SnackStats;->getOpportunitiesSinceLastSnack(Lorg/ligi/snackengage/snacks/Snack;)J

    move-result-wide v0

    iget v2, p0, Lorg/ligi/snackengage/conditions/AfterNumberOfOpportunities;->number:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
