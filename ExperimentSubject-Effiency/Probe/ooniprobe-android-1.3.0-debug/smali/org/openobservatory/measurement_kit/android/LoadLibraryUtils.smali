.class public Lorg/openobservatory/measurement_kit/android/LoadLibraryUtils;
.super Ljava/lang/Object;
.source "LoadLibraryUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load_measurement_kit()V
    .locals 1

    .line 12
    const-string v0, "measurement_kit"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method
