.class public final Lorg/threeten/bp/ZoneOffset;
.super Lorg/threeten/bp/ZoneId;
.source "ZoneOffset.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalAccessor;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/ZoneId;",
        "Lorg/threeten/bp/temporal/TemporalAccessor;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/ZoneOffset;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lorg/threeten/bp/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<",
            "Lorg/threeten/bp/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lorg/threeten/bp/ZoneOffset;

.field private static final MAX_SECONDS:I = 0xfd20

.field public static final MIN:Lorg/threeten/bp/ZoneOffset;

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field private static final SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/threeten/bp/ZoneOffset;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field public static final UTC:Lorg/threeten/bp/ZoneOffset;

.field private static final serialVersionUID:J = 0x20b8141d7a029c21L


# instance fields
.field private final transient id:Ljava/lang/String;

.field private final totalSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x4

    const/high16 v1, 0x3f400000    # 0.75f

    .line 96
    new-instance v0, Lorg/threeten/bp/ZoneOffset$1;

    invoke-direct {v0}, Lorg/threeten/bp/ZoneOffset$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/ZoneOffset;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lorg/threeten/bp/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lorg/threeten/bp/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/ZoneOffset;->UTC:Lorg/threeten/bp/ZoneOffset;

    .line 136
    const v0, -0xfd20

    invoke-static {v0}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/ZoneOffset;->MIN:Lorg/threeten/bp/ZoneOffset;

    .line 140
    const v0, 0xfd20

    invoke-static {v0}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/ZoneOffset;->MAX:Lorg/threeten/bp/ZoneOffset;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "totalSeconds"    # I

    .prologue
    .line 414
    invoke-direct {p0}, Lorg/threeten/bp/ZoneId;-><init>()V

    .line 415
    iput p1, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    .line 416
    invoke-static {p1}, Lorg/threeten/bp/ZoneOffset;->buildId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/ZoneOffset;->id:Ljava/lang/String;

    .line 417
    return-void
.end method

.method private static buildId(I)Ljava/lang/String;
    .locals 8
    .param p0, "totalSeconds"    # I

    .prologue
    const/16 v7, 0xa

    .line 420
    if-nez p0, :cond_0

    .line 421
    const-string v5, "Z"

    .line 434
    :goto_0
    return-object v5

    .line 423
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 424
    .local v3, "absTotalSeconds":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v4, "buf":Ljava/lang/StringBuilder;
    div-int/lit16 v0, v3, 0xe10

    .line 426
    .local v0, "absHours":I
    div-int/lit8 v5, v3, 0x3c

    rem-int/lit8 v1, v5, 0x3c

    .line 427
    .local v1, "absMinutes":I
    if-gez p0, :cond_2

    const-string v5, "-"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v0, v7, :cond_3

    const-string v5, "0"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v1, v7, :cond_4

    const-string v5, ":0"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    rem-int/lit8 v2, v3, 0x3c

    .line 431
    .local v2, "absSeconds":I
    if-eqz v2, :cond_1

    .line 432
    if-ge v2, v7, :cond_5

    const-string v5, ":0"

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 434
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 427
    .end local v2    # "absSeconds":I
    :cond_2
    const-string v5, "+"

    goto :goto_1

    :cond_3
    const-string v5, ""

    goto :goto_2

    :cond_4
    const-string v5, ":"

    goto :goto_3

    .line 432
    .restart local v2    # "absSeconds":I
    :cond_5
    const-string v5, ":"

    goto :goto_4
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/ZoneOffset;
    .locals 4
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 320
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZoneOffset;

    .line 321
    .local v0, "offset":Lorg/threeten/bp/ZoneOffset;
    if-nez v0, :cond_0

    .line 322
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain ZoneOffset from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_0
    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lorg/threeten/bp/ZoneOffset;
    .locals 11
    .param p0, "offsetId"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x2d

    const/4 v9, 0x4

    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 183
    const-string v5, "offsetId"

    invoke-static {p0, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    sget-object v5, Lorg/threeten/bp/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/threeten/bp/ZoneOffset;

    .line 186
    .local v3, "offset":Lorg/threeten/bp/ZoneOffset;
    if-eqz v3, :cond_0

    .line 230
    .end local v3    # "offset":Lorg/threeten/bp/ZoneOffset;
    :goto_0
    return-object v3

    .line 192
    .restart local v3    # "offset":Lorg/threeten/bp/ZoneOffset;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 221
    :pswitch_0
    new-instance v5, Lorg/threeten/bp/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid ID for ZoneOffset, invalid format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 196
    :pswitch_2
    invoke-static {p0, v8, v7}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 197
    .local v1, "hours":I
    const/4 v2, 0x0

    .line 198
    .local v2, "minutes":I
    const/4 v4, 0x0

    .line 223
    .local v4, "seconds":I
    :goto_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 224
    .local v0, "first":C
    const/16 v5, 0x2b

    if-eq v0, v5, :cond_1

    if-eq v0, v10, :cond_1

    .line 225
    new-instance v5, Lorg/threeten/bp/DateTimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid ID for ZoneOffset, plus/minus not found when expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    .end local v0    # "first":C
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v4    # "seconds":I
    :pswitch_3
    invoke-static {p0, v8, v7}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 202
    .restart local v1    # "hours":I
    invoke-static {p0, v6, v7}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 203
    .restart local v2    # "minutes":I
    const/4 v4, 0x0

    .line 204
    .restart local v4    # "seconds":I
    goto :goto_1

    .line 206
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v4    # "seconds":I
    :pswitch_4
    invoke-static {p0, v8, v7}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 207
    .restart local v1    # "hours":I
    invoke-static {p0, v9, v8}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 208
    .restart local v2    # "minutes":I
    const/4 v4, 0x0

    .line 209
    .restart local v4    # "seconds":I
    goto :goto_1

    .line 211
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v4    # "seconds":I
    :pswitch_5
    invoke-static {p0, v8, v7}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 212
    .restart local v1    # "hours":I
    invoke-static {p0, v6, v7}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 213
    .restart local v2    # "minutes":I
    const/4 v5, 0x5

    invoke-static {p0, v5, v7}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v4

    .line 214
    .restart local v4    # "seconds":I
    goto :goto_1

    .line 216
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v4    # "seconds":I
    :pswitch_6
    invoke-static {p0, v8, v7}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v1

    .line 217
    .restart local v1    # "hours":I
    invoke-static {p0, v9, v8}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v2

    .line 218
    .restart local v2    # "minutes":I
    const/4 v5, 0x7

    invoke-static {p0, v5, v8}, Lorg/threeten/bp/ZoneOffset;->parseNumber(Ljava/lang/CharSequence;IZ)I

    move-result v4

    .line 219
    .restart local v4    # "seconds":I
    goto :goto_1

    .line 227
    .restart local v0    # "first":C
    :cond_1
    if-ne v0, v10, :cond_2

    .line 228
    neg-int v5, v1

    neg-int v6, v2

    neg-int v7, v4

    invoke-static {v5, v6, v7}, Lorg/threeten/bp/ZoneOffset;->ofHoursMinutesSeconds(III)Lorg/threeten/bp/ZoneOffset;

    move-result-object v3

    goto/16 :goto_0

    .line 230
    :cond_2
    invoke-static {v1, v2, v4}, Lorg/threeten/bp/ZoneOffset;->ofHoursMinutesSeconds(III)Lorg/threeten/bp/ZoneOffset;

    move-result-object v3

    goto/16 :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static ofHours(I)Lorg/threeten/bp/ZoneOffset;
    .locals 1
    .param p0, "hours"    # I

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-static {p0, v0, v0}, Lorg/threeten/bp/ZoneOffset;->ofHoursMinutesSeconds(III)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public static ofHoursMinutes(II)Lorg/threeten/bp/ZoneOffset;
    .locals 1
    .param p0, "hours"    # I
    .param p1, "minutes"    # I

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/threeten/bp/ZoneOffset;->ofHoursMinutesSeconds(III)Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method public static ofHoursMinutesSeconds(III)Lorg/threeten/bp/ZoneOffset;
    .locals 2
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I

    .prologue
    .line 297
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/ZoneOffset;->validate(III)V

    .line 298
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/ZoneOffset;->totalSeconds(III)I

    move-result v0

    .line 299
    .local v0, "totalSeconds":I
    invoke-static {v0}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    return-object v1
.end method

.method public static ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;
    .locals 4
    .param p0, "totalSeconds"    # I

    .prologue
    .line 389
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const v3, 0xfd20

    if-le v2, v3, :cond_0

    .line 390
    new-instance v2, Lorg/threeten/bp/DateTimeException;

    const-string v3, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {v2, v3}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 392
    :cond_0
    rem-int/lit16 v2, p0, 0x384

    if-nez v2, :cond_2

    .line 393
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 394
    .local v1, "totalSecs":Ljava/lang/Integer;
    sget-object v2, Lorg/threeten/bp/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/ZoneOffset;

    .line 395
    .local v0, "result":Lorg/threeten/bp/ZoneOffset;
    if-nez v0, :cond_1

    .line 396
    new-instance v0, Lorg/threeten/bp/ZoneOffset;

    .end local v0    # "result":Lorg/threeten/bp/ZoneOffset;
    invoke-direct {v0, p0}, Lorg/threeten/bp/ZoneOffset;-><init>(I)V

    .line 397
    .restart local v0    # "result":Lorg/threeten/bp/ZoneOffset;
    sget-object v2, Lorg/threeten/bp/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v2, Lorg/threeten/bp/ZoneOffset;->SECONDS_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lorg/threeten/bp/ZoneOffset;
    check-cast v0, Lorg/threeten/bp/ZoneOffset;

    .line 399
    .restart local v0    # "result":Lorg/threeten/bp/ZoneOffset;
    sget-object v2, Lorg/threeten/bp/ZoneOffset;->ID_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .end local v0    # "result":Lorg/threeten/bp/ZoneOffset;
    .end local v1    # "totalSecs":Ljava/lang/Integer;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lorg/threeten/bp/ZoneOffset;

    invoke-direct {v0, p0}, Lorg/threeten/bp/ZoneOffset;-><init>(I)V

    goto :goto_0
.end method

.method private static parseNumber(Ljava/lang/CharSequence;IZ)I
    .locals 6
    .param p0, "offsetId"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I
    .param p2, "precededByColon"    # Z

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    .line 243
    if-eqz p2, :cond_0

    add-int/lit8 v2, p1, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_0

    .line 244
    new-instance v2, Lorg/threeten/bp/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ID for ZoneOffset, colon not found when expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 247
    .local v0, "ch1":C
    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 248
    .local v1, "ch2":C
    if-lt v0, v4, :cond_1

    if-gt v0, v5, :cond_1

    if-lt v1, v4, :cond_1

    if-le v1, v5, :cond_2

    .line 249
    :cond_1
    new-instance v2, Lorg/threeten/bp/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ID for ZoneOffset, non numeric characters found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_2
    add-int/lit8 v2, v0, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v1, -0x30

    add-int/2addr v2, v3

    return v2
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;
    .locals 2
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 758
    .local v0, "offsetByte":I
    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-static {v1}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    mul-int/lit16 v1, v0, 0x384

    invoke-static {v1}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 738
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static totalSeconds(III)I
    .locals 2
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I

    .prologue
    .line 375
    mul-int/lit16 v0, p0, 0xe10

    mul-int/lit8 v1, p1, 0x3c

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    return v0
.end method

.method private static validate(III)V
    .locals 3
    .param p0, "hours"    # I
    .param p1, "minutes"    # I
    .param p2, "seconds"    # I

    .prologue
    const/16 v2, 0x3b

    const/16 v1, 0x12

    .line 338
    const/16 v0, -0x12

    if-lt p0, v0, :cond_0

    if-le p0, v1, :cond_1

    .line 339
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zone offset hours not in valid range: value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range -18 to 18"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_1
    if-lez p0, :cond_3

    .line 343
    if-ltz p1, :cond_2

    if-gez p2, :cond_8

    .line 344
    :cond_2
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Zone offset minutes and seconds must be positive because hours is positive"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_3
    if-gez p0, :cond_5

    .line 347
    if-gtz p1, :cond_4

    if-lez p2, :cond_8

    .line 348
    :cond_4
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Zone offset minutes and seconds must be negative because hours is negative"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_5
    if-lez p1, :cond_6

    if-ltz p2, :cond_7

    :cond_6
    if-gez p1, :cond_8

    if-lez p2, :cond_8

    .line 351
    :cond_7
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Zone offset minutes and seconds must have the same sign"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_9

    .line 354
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zone offset minutes not in valid range: abs(value) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range 0 to 59"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_9
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v2, :cond_a

    .line 358
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zone offset seconds not in valid range: abs(value) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range 0 to 59"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_a
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v1, :cond_c

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_b

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_c

    .line 362
    :cond_b
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Zone offset not in valid range: -18:00 to +18:00"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_c
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 729
    new-instance v0, Lorg/threeten/bp/Ser;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 4
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 663
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    iget v1, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZoneOffset;->compareTo(Lorg/threeten/bp/ZoneOffset;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/threeten/bp/ZoneOffset;)I
    .locals 2
    .param p1, "other"    # Lorg/threeten/bp/ZoneOffset;

    .prologue
    .line 682
    iget v0, p1, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    iget v1, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 697
    if-ne p0, p1, :cond_1

    .line 703
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 700
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/ZoneOffset;

    if-eqz v2, :cond_2

    .line 701
    iget v2, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    check-cast p1, Lorg/threeten/bp/ZoneOffset;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v3, p1, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    move v0, v1

    .line 703
    goto :goto_0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 567
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 568
    iget v0, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    .line 572
    :goto_0
    return v0

    .line 569
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 570
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_1
    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZoneOffset;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZoneOffset;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lorg/threeten/bp/ZoneOffset;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 598
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 599
    iget v0, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    int-to-long v0, v0

    .line 603
    :goto_0
    return-wide v0

    .line 600
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 601
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getRules()Lorg/threeten/bp/zone/ZoneRules;
    .locals 1

    .prologue
    .line 480
    invoke-static {p0}, Lorg/threeten/bp/zone/ZoneRules;->of(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/zone/ZoneRules;

    move-result-object v0

    return-object v0
.end method

.method public getTotalSeconds()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 505
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 506
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v2, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 506
    goto :goto_0

    .line 508
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/threeten/bp/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->offset()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zone()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 634
    .end local p0    # "this":Lorg/threeten/bp/ZoneOffset;
    :cond_0
    :goto_0
    return-object p0

    .line 630
    .restart local p0    # "this":Lorg/threeten/bp/ZoneOffset;
    :cond_1
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localDate()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->localTime()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->precision()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->zoneId()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 632
    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    .line 634
    :cond_3
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalQuery;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 535
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->OFFSET_SECONDS:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 536
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    .line 540
    :goto_0
    return-object v0

    .line 537
    :cond_0
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_1

    .line 538
    new-instance v0, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lorg/threeten/bp/ZoneOffset;->id:Ljava/lang/String;

    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 743
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 744
    invoke-virtual {p0, p1}, Lorg/threeten/bp/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    .line 745
    return-void
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x7f

    .line 748
    iget v1, p0, Lorg/threeten/bp/ZoneOffset;->totalSeconds:I

    .line 749
    .local v1, "offsetSecs":I
    rem-int/lit16 v3, v1, 0x384

    if-nez v3, :cond_1

    div-int/lit16 v0, v1, 0x384

    .line 750
    .local v0, "offsetByte":I
    :goto_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 751
    if-ne v0, v2, :cond_0

    .line 752
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 754
    :cond_0
    return-void

    .end local v0    # "offsetByte":I
    :cond_1
    move v0, v2

    .line 749
    goto :goto_0
.end method
