.class public Lorg/ligi/snackengage/snacks/DefaultRateSnack;
.super Lorg/ligi/snackengage/snacks/RateSnack;
.source "DefaultRateSnack.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/ligi/snackengage/snacks/RateSnack;-><init>()V

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/ligi/snackengage/conditions/SnackCondition;

    const/4 v1, 0x0

    new-instance v2, Lorg/ligi/snackengage/conditions/NeverAgainWhenClickedOnce;

    invoke-direct {v2}, Lorg/ligi/snackengage/conditions/NeverAgainWhenClickedOnce;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/ligi/snackengage/conditions/AfterNumberOfOpportunities;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lorg/ligi/snackengage/conditions/AfterNumberOfOpportunities;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/ligi/snackengage/conditions/connectivity/IsConnectedViaWiFiOrUnknown;

    invoke-direct {v2}, Lorg/ligi/snackengage/conditions/connectivity/IsConnectedViaWiFiOrUnknown;-><init>()V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/ligi/snackengage/snacks/DefaultRateSnack;->withConditions([Lorg/ligi/snackengage/conditions/SnackCondition;)Lorg/ligi/snackengage/snacks/BaseSnack;

    .line 11
    return-void
.end method
