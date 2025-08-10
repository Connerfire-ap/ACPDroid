.class public final Lorg/ligi/passandroid/json_adapter/ZonedTimeAdapter;
.super Ljava/lang/Object;
.source "ZonedTimeAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0001\u00a2\u0006\u0002\u0008\u0008J\u001d\u0010\t\u001a\n \u0005*\u0004\u0018\u00010\u00070\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0001\u00a2\u0006\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/ligi/passandroid/json_adapter/ZonedTimeAdapter;",
        "",
        "()V",
        "fromJson",
        "Lorg/threeten/bp/ZonedDateTime;",
        "kotlin.jvm.PlatformType",
        "zonedDateTime",
        "",
        "fromJson$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug",
        "toJson",
        "toJson$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug(Ljava/lang/String;)Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .param p1, "zonedDateTime"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/squareup/moshi/FromJson;
    .end annotation

    .prologue
    const-string v0, "zonedDateTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "zonedDateTime":Ljava/lang/String;
    invoke-static {p1}, Lorg/threeten/bp/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method

.method public final toJson$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug(Lorg/threeten/bp/ZonedDateTime;)Ljava/lang/String;
    .locals 1
    .param p1, "zonedDateTime"    # Lorg/threeten/bp/ZonedDateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/squareup/moshi/ToJson;
    .end annotation

    .prologue
    const-string v0, "zonedDateTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lorg/threeten/bp/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/ZonedDateTime;->format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
