.class public final Lorg/ligi/passandroid/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "org.ligi.passandroid"

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final FLAVOR:Ljava/lang/String; = "noMapsNoAnalyticsForFDroid"

.field public static final FLAVOR_analytics:Ljava/lang/String; = "noAnalytics"

.field public static final FLAVOR_distribution:Ljava/lang/String; = "forFDroid"

.field public static final FLAVOR_maps:Ljava/lang/String; = "noMaps"

.field public static final VERSION_CODE:I = 0x159

.field public static final VERSION_NAME:Ljava/lang/String; = "3.4.5"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/ligi/passandroid/BuildConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
