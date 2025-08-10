.class public Lorg/openobservatory/measurement_kit/common/Version;
.super Ljava/lang/Object;
.source "Version.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    .line 9
    invoke-static {}, Lorg/openobservatory/measurement_kit/swig/Version;->version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
