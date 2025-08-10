.class public Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/CrashlyticsCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private delay:F

.field private disabled:Z

.field private listener:Lcom/crashlytics/android/core/CrashlyticsListener;

.field private pinningInfoProvider:Lcom/crashlytics/android/core/PinningInfoProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->delay:F

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/crashlytics/android/core/CrashlyticsCore;
    .locals 5

    .line 163
    iget v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->delay:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 164
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->delay:F

    .line 166
    :cond_0
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsCore;

    iget v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->delay:F

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->listener:Lcom/crashlytics/android/core/CrashlyticsListener;

    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->pinningInfoProvider:Lcom/crashlytics/android/core/PinningInfoProvider;

    iget-boolean v4, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crashlytics/android/core/CrashlyticsCore;-><init>(FLcom/crashlytics/android/core/CrashlyticsListener;Lcom/crashlytics/android/core/PinningInfoProvider;Z)V

    return-object v0
.end method

.method public delay(F)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
    .locals 2
    .param p1, "delay"    # F

    .line 106
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_1

    .line 110
    iget v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->delay:F

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_0

    .line 114
    iput p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->delay:F

    .line 115
    return-object p0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "delay already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delay must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disabled(Z)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
    .locals 0
    .param p1, "isDisabled"    # Z

    .line 158
    iput-boolean p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled:Z

    .line 159
    return-object p0
.end method

.method public listener(Lcom/crashlytics/android/core/CrashlyticsListener;)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
    .locals 2
    .param p1, "listener"    # Lcom/crashlytics/android/core/CrashlyticsListener;

    .line 121
    if-eqz p1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->listener:Lcom/crashlytics/android/core/CrashlyticsListener;

    if-nez v0, :cond_0

    .line 129
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->listener:Lcom/crashlytics/android/core/CrashlyticsListener;

    .line 130
    return-object p0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pinningInfo(Lcom/crashlytics/android/core/PinningInfoProvider;)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
    .locals 2
    .param p1, "pinningInfoProvider"    # Lcom/crashlytics/android/core/PinningInfoProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    if-eqz p1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->pinningInfoProvider:Lcom/crashlytics/android/core/PinningInfoProvider;

    if-nez v0, :cond_0

    .line 147
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->pinningInfoProvider:Lcom/crashlytics/android/core/PinningInfoProvider;

    .line 148
    return-object p0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pinningInfoProvider already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pinningInfoProvider must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
