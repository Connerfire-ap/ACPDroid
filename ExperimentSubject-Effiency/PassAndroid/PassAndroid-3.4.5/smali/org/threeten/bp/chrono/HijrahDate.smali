.class public final Lorg/threeten/bp/chrono/HijrahDate;
.super Lorg/threeten/bp/chrono/ChronoDateImpl;
.source "HijrahDate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/chrono/HijrahDate$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/chrono/ChronoDateImpl",
        "<",
        "Lorg/threeten/bp/chrono/HijrahDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ADJUSTED_CYCLES:[Ljava/lang/Long;

.field private static final ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

.field private static final ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

.field private static final ADJUSTED_MIN_VALUES:[Ljava/lang/Integer;

.field private static final ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CYCLEYEAR_START_DATE:[I

.field private static final DEFAULT_CONFIG_FILENAME:Ljava/lang/String; = "hijrah_deviation.cfg"

.field private static final DEFAULT_CONFIG_PATH:Ljava/lang/String;

.field private static final DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

.field private static final DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

.field private static final DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

.field private static final DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

.field private static final DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

.field private static final FILE_SEP:C

.field private static final HIJRAH_JAN_1_1_GREGORIAN_DAY:I = -0x78274

.field private static final LEAP_MONTH_LENGTH:[I

.field private static final LEAP_NUM_DAYS:[I

.field private static final LEAST_MAX_VALUES:[I

.field private static final MAX_ADJUSTED_CYCLE:I = 0x14e

.field private static final MAX_VALUES:[I

.field public static final MAX_VALUE_OF_ERA:I = 0x270f

.field private static final MIN_VALUES:[I

.field public static final MIN_VALUE_OF_ERA:I = 0x1

.field private static final MONTH_LENGTH:[I

.field private static final NUM_DAYS:[I

.field private static final PATH_SEP:Ljava/lang/String;

.field private static final POSITION_DAY_OF_MONTH:I = 0x5

.field private static final POSITION_DAY_OF_YEAR:I = 0x6

.field private static final serialVersionUID:J = -0x4846033461a5e4e4L


# instance fields
.field private final transient dayOfMonth:I

.field private final transient dayOfWeek:Lorg/threeten/bp/DayOfWeek;

.field private final transient dayOfYear:I

.field private final transient era:Lorg/threeten/bp/chrono/HijrahEra;

.field private final gregorianEpochDay:J

.field private final transient isLeapYear:Z

.field private final transient monthOfYear:I

.field private final transient yearOfEra:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x7

    const/16 v2, 0xc

    .line 136
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    .line 141
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    .line 146
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    .line 151
    new-array v1, v2, [I

    fill-array-data v1, :array_3

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    .line 168
    new-array v1, v3, [I

    fill-array-data v1, :array_4

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->MIN_VALUES:[I

    .line 182
    new-array v1, v3, [I

    fill-array-data v1, :array_5

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->LEAST_MAX_VALUES:[I

    .line 196
    new-array v1, v3, [I

    fill-array-data v1, :array_6

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->MAX_VALUES:[I

    .line 220
    const/16 v1, 0x1e

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    .line 257
    sget-char v1, Ljava/io/File;->separatorChar:C

    sput-char v1, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    .line 261
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->PATH_SEP:Ljava/lang/String;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "threeten"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "chrono"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    .line 274
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    .line 279
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    .line 285
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    .line 331
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 333
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    aget v3, v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

    .line 337
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 338
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    aget v3, v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 341
    :cond_1
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

    .line 342
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 343
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    aget v3, v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 346
    :cond_2
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

    .line 347
    const/4 v0, 0x0

    :goto_3
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 348
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    aget v3, v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 351
    :cond_3
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

    .line 352
    const/4 v0, 0x0

    :goto_4
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 353
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    aget v3, v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 356
    :cond_4
    const/16 v1, 0x14e

    new-array v1, v1, [Ljava/lang/Long;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    .line 357
    const/4 v0, 0x0

    :goto_5
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 358
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    new-instance v2, Ljava/lang/Long;

    mul-int/lit16 v3, v0, 0x2987

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v1, v0

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 361
    :cond_5
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->MIN_VALUES:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MIN_VALUES:[Ljava/lang/Integer;

    .line 362
    const/4 v0, 0x0

    :goto_6
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->MIN_VALUES:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 363
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MIN_VALUES:[Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->MIN_VALUES:[I

    aget v3, v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 365
    :cond_6
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->LEAST_MAX_VALUES:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    .line 366
    const/4 v0, 0x0

    :goto_7
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->LEAST_MAX_VALUES:[I

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 367
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->LEAST_MAX_VALUES:[I

    aget v3, v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 369
    :cond_7
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->MAX_VALUES:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    .line 370
    const/4 v0, 0x0

    :goto_8
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->MAX_VALUES:[I

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 371
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    sget-object v3, Lorg/threeten/bp/chrono/HijrahDate;->MAX_VALUES:[I

    aget v3, v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 374
    :cond_8
    :try_start_0
    invoke-static {}, Lorg/threeten/bp/chrono/HijrahDate;->readDeviationConfig()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    :goto_9
    return-void

    .line 375
    :catch_0
    move-exception v1

    goto :goto_9

    .line 378
    :catch_1
    move-exception v1

    goto :goto_9

    .line 136
    :array_0
    .array-data 4
        0x0
        0x1e
        0x3b
        0x59
        0x76
        0x94
        0xb1
        0xcf
        0xec
        0x10a
        0x127
        0x145
    .end array-data

    .line 141
    :array_1
    .array-data 4
        0x0
        0x1e
        0x3b
        0x59
        0x76
        0x94
        0xb1
        0xcf
        0xec
        0x10a
        0x127
        0x145
    .end array-data

    .line 146
    :array_2
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
    .end array-data

    .line 151
    :array_3
    .array-data 4
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1d
        0x1e
        0x1e
    .end array-data

    .line 168
    :array_4
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
    .end array-data

    .line 182
    :array_5
    .array-data 4
        0x1
        0x270f
        0xb
        0x33
        0x5
        0x1d
        0x162
    .end array-data

    .line 196
    :array_6
    .array-data 4
        0x1
        0x270f
        0xb
        0x34
        0x6
        0x1e
        0x163
    .end array-data

    .line 220
    :array_7
    .array-data 4
        0x0
        0x162
        0x2c5
        0x427
        0x589
        0x6ec
        0x84e
        0x9b1
        0xb13
        0xc75
        0xdd8
        0xf3a
        0x109c
        0x11ff
        0x1361
        0x14c3
        0x1626
        0x1788
        0x18eb
        0x1a4d
        0x1baf
        0x1d12
        0x1e74
        0x1fd6
        0x2139
        0x229b
        0x23fe
        0x2560
        0x26c2
        0x2825
    .end array-data
.end method

.method private constructor <init>(J)V
    .locals 7
    .param p1, "gregorianDay"    # J

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 588
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoDateImpl;-><init>()V

    .line 589
    invoke-static {p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->getHijrahDateInfo(J)[I

    move-result-object v0

    .line 591
    .local v0, "dateInfo":[I
    aget v1, v0, v2

    invoke-static {v1}, Lorg/threeten/bp/chrono/HijrahDate;->checkValidYearOfEra(I)V

    .line 592
    aget v1, v0, v3

    invoke-static {v1}, Lorg/threeten/bp/chrono/HijrahDate;->checkValidMonth(I)V

    .line 593
    aget v1, v0, v4

    invoke-static {v1}, Lorg/threeten/bp/chrono/HijrahDate;->checkValidDayOfMonth(I)V

    .line 594
    aget v1, v0, v5

    invoke-static {v1}, Lorg/threeten/bp/chrono/HijrahDate;->checkValidDayOfYear(I)V

    .line 596
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1}, Lorg/threeten/bp/chrono/HijrahEra;->of(I)Lorg/threeten/bp/chrono/HijrahEra;

    move-result-object v1

    iput-object v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->era:Lorg/threeten/bp/chrono/HijrahEra;

    .line 597
    aget v1, v0, v2

    iput v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    .line 598
    aget v1, v0, v3

    iput v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    .line 599
    aget v1, v0, v4

    iput v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    .line 600
    aget v1, v0, v5

    iput v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfYear:I

    .line 601
    const/4 v1, 0x5

    aget v1, v0, v1

    invoke-static {v1}, Lorg/threeten/bp/DayOfWeek;->of(I)Lorg/threeten/bp/DayOfWeek;

    move-result-object v1

    iput-object v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    .line 602
    iput-wide p1, p0, Lorg/threeten/bp/chrono/HijrahDate;->gregorianEpochDay:J

    .line 603
    iget v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v1

    iput-boolean v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear:Z

    .line 604
    return-void
.end method

.method private static addDeviationAsHijrah(IIIII)V
    .locals 44
    .param p0, "startYear"    # I
    .param p1, "startMonth"    # I
    .param p2, "endYear"    # I
    .param p3, "endMonth"    # I
    .param p4, "offset"    # I

    .prologue
    .line 1236
    const/16 v37, 0x1

    move/from16 v0, p0

    move/from16 v1, v37

    if-ge v0, v1, :cond_0

    .line 1237
    new-instance v37, Ljava/lang/IllegalArgumentException;

    const-string v38, "startYear < 1"

    invoke-direct/range {v37 .. v38}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 1239
    :cond_0
    const/16 v37, 0x1

    move/from16 v0, p2

    move/from16 v1, v37

    if-ge v0, v1, :cond_1

    .line 1240
    new-instance v37, Ljava/lang/IllegalArgumentException;

    const-string v38, "endYear < 1"

    invoke-direct/range {v37 .. v38}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 1242
    :cond_1
    if-ltz p1, :cond_2

    const/16 v37, 0xb

    move/from16 v0, p1

    move/from16 v1, v37

    if-le v0, v1, :cond_3

    .line 1243
    :cond_2
    new-instance v37, Ljava/lang/IllegalArgumentException;

    const-string v38, "startMonth < 0 || startMonth > 11"

    invoke-direct/range {v37 .. v38}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 1246
    :cond_3
    if-ltz p3, :cond_4

    const/16 v37, 0xb

    move/from16 v0, p3

    move/from16 v1, v37

    if-le v0, v1, :cond_5

    .line 1247
    :cond_4
    new-instance v37, Ljava/lang/IllegalArgumentException;

    const-string v38, "endMonth < 0 || endMonth > 11"

    invoke-direct/range {v37 .. v38}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 1249
    :cond_5
    const/16 v37, 0x270f

    move/from16 v0, p2

    move/from16 v1, v37

    if-le v0, v1, :cond_6

    .line 1250
    new-instance v37, Ljava/lang/IllegalArgumentException;

    const-string v38, "endYear > 9999"

    invoke-direct/range {v37 .. v38}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 1252
    :cond_6
    move/from16 v0, p2

    move/from16 v1, p0

    if-ge v0, v1, :cond_7

    .line 1253
    new-instance v37, Ljava/lang/IllegalArgumentException;

    const-string v38, "startYear > endYear"

    invoke-direct/range {v37 .. v38}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 1255
    :cond_7
    move/from16 v0, p2

    move/from16 v1, p0

    if-ne v0, v1, :cond_8

    move/from16 v0, p3

    move/from16 v1, p1

    if-ge v0, v1, :cond_8

    .line 1256
    new-instance v37, Ljava/lang/IllegalArgumentException;

    const-string v38, "startYear == endYear && endMonth < startMonth"

    invoke-direct/range {v37 .. v38}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v37

    .line 1261
    :cond_8
    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v11

    .line 1264
    .local v11, "isStartYLeap":Z
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    move/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Ljava/lang/Integer;

    .line 1266
    .local v26, "orgStartMonthNums":[Ljava/lang/Integer;
    if-nez v26, :cond_a

    .line 1267
    if-eqz v11, :cond_9

    .line 1268
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v26, v0

    .line 1269
    const/4 v13, 0x0

    .local v13, "l":I
    :goto_0
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v13, v0, :cond_a

    .line 1270
    new-instance v37, Ljava/lang/Integer;

    sget-object v38, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    aget v38, v38, v13

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v26, v13

    .line 1269
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1273
    .end local v13    # "l":I
    :cond_9
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v26, v0

    .line 1274
    const/4 v13, 0x0

    .restart local v13    # "l":I
    :goto_1
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v13, v0, :cond_a

    .line 1275
    new-instance v37, Ljava/lang/Integer;

    sget-object v38, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    aget v38, v38, v13

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v26, v13

    .line 1274
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1280
    .end local v13    # "l":I
    :cond_a
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v22, v0

    .line 1282
    .local v22, "newStartMonthNums":[Ljava/lang/Integer;
    const/16 v18, 0x0

    .local v18, "month":I
    :goto_2
    const/16 v37, 0xc

    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_c

    .line 1283
    move/from16 v0, v18

    move/from16 v1, p1

    if-le v0, v1, :cond_b

    .line 1284
    new-instance v37, Ljava/lang/Integer;

    aget-object v38, v26, v18

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sub-int v38, v38, p4

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v22, v18

    .line 1282
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1288
    :cond_b
    new-instance v37, Ljava/lang/Integer;

    aget-object v38, v26, v18

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v22, v18

    goto :goto_3

    .line 1293
    :cond_c
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    move/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    move/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/Integer;

    .line 1299
    .local v25, "orgStartMonthLengths":[Ljava/lang/Integer;
    if-nez v25, :cond_e

    .line 1300
    if-eqz v11, :cond_d

    .line 1301
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v25, v0

    .line 1302
    const/4 v13, 0x0

    .restart local v13    # "l":I
    :goto_4
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v13, v0, :cond_e

    .line 1303
    new-instance v37, Ljava/lang/Integer;

    sget-object v38, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    aget v38, v38, v13

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v25, v13

    .line 1302
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1306
    .end local v13    # "l":I
    :cond_d
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v25, v0

    .line 1307
    const/4 v13, 0x0

    .restart local v13    # "l":I
    :goto_5
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v13, v0, :cond_e

    .line 1308
    new-instance v37, Ljava/lang/Integer;

    sget-object v38, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    aget v38, v38, v13

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v25, v13

    .line 1307
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1313
    .end local v13    # "l":I
    :cond_e
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    .line 1315
    .local v21, "newStartMonthLengths":[Ljava/lang/Integer;
    const/16 v18, 0x0

    :goto_6
    const/16 v37, 0xc

    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_10

    .line 1316
    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_f

    .line 1317
    new-instance v37, Ljava/lang/Integer;

    aget-object v38, v25, v18

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sub-int v38, v38, p4

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v21, v18

    .line 1315
    :goto_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 1320
    :cond_f
    new-instance v37, Ljava/lang/Integer;

    aget-object v38, v25, v18

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v21, v18

    goto :goto_7

    .line 1325
    :cond_10
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    move/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    move/from16 v0, p0

    move/from16 v1, p2

    if-eq v0, v1, :cond_17

    .line 1330
    add-int/lit8 v37, p0, -0x1

    div-int/lit8 v27, v37, 0x1e

    .line 1331
    .local v27, "sCycleNumber":I
    add-int/lit8 v37, p0, -0x1

    rem-int/lit8 v30, v37, 0x1e

    .line 1332
    .local v30, "sYearInCycle":I
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Ljava/lang/Integer;

    .line 1334
    .local v32, "startCycles":[Ljava/lang/Integer;
    if-nez v32, :cond_11

    .line 1335
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v32, v0

    .line 1336
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_8
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v12, v0, :cond_11

    .line 1337
    new-instance v37, Ljava/lang/Integer;

    sget-object v38, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    aget v38, v38, v12

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v32, v12

    .line 1336
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 1341
    .end local v12    # "j":I
    :cond_11
    add-int/lit8 v12, v30, 0x1

    .restart local v12    # "j":I
    :goto_9
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v12, v0, :cond_12

    .line 1342
    new-instance v37, Ljava/lang/Integer;

    aget-object v38, v32, v12

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sub-int v38, v38, p4

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v32, v12

    .line 1341
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1346
    :cond_12
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    add-int/lit8 v37, p0, -0x1

    div-int/lit8 v31, v37, 0x1e

    .line 1349
    .local v31, "sYearInMaxY":I
    add-int/lit8 v37, p2, -0x1

    div-int/lit8 v29, v37, 0x1e

    .line 1351
    .local v29, "sEndInMaxY":I
    move/from16 v0, v31

    move/from16 v1, v29

    if-eq v0, v1, :cond_14

    .line 1356
    add-int/lit8 v12, v31, 0x1

    :goto_a
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v12, v0, :cond_13

    .line 1357
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    new-instance v38, Ljava/lang/Long;

    sget-object v39, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    aget-object v39, v39, v12

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v42, v0

    sub-long v40, v40, v42

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    aput-object v38, v37, v12

    .line 1356
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 1362
    :cond_13
    add-int/lit8 v12, v29, 0x1

    :goto_b
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v12, v0, :cond_14

    .line 1363
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    new-instance v38, Ljava/lang/Long;

    sget-object v39, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    aget-object v39, v39, v12

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v40, v40, v42

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    aput-object v38, v37, v12

    .line 1362
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 1369
    :cond_14
    add-int/lit8 v37, p2, -0x1

    div-int/lit8 v4, v37, 0x1e

    .line 1370
    .local v4, "eCycleNumber":I
    add-int/lit8 v37, p2, -0x1

    rem-int/lit8 v28, v37, 0x1e

    .line 1371
    .local v28, "sEndInCycle":I
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Integer;

    .line 1373
    .local v5, "endCycles":[Ljava/lang/Integer;
    if-nez v5, :cond_15

    .line 1374
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v5, v0, [Ljava/lang/Integer;

    .line 1375
    const/4 v12, 0x0

    :goto_c
    array-length v0, v5

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v12, v0, :cond_15

    .line 1376
    new-instance v37, Ljava/lang/Integer;

    sget-object v38, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    aget v38, v38, v12

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v5, v12

    .line 1375
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 1379
    :cond_15
    add-int/lit8 v12, v28, 0x1

    :goto_d
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->CYCLEYEAR_START_DATE:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v12, v0, :cond_16

    .line 1380
    new-instance v37, Ljava/lang/Integer;

    aget-object v38, v5, v12

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    add-int v38, v38, p4

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v5, v12

    .line 1379
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 1382
    :cond_16
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    .end local v4    # "eCycleNumber":I
    .end local v5    # "endCycles":[Ljava/lang/Integer;
    .end local v12    # "j":I
    .end local v27    # "sCycleNumber":I
    .end local v28    # "sEndInCycle":I
    .end local v29    # "sEndInMaxY":I
    .end local v30    # "sYearInCycle":I
    .end local v31    # "sYearInMaxY":I
    .end local v32    # "startCycles":[Ljava/lang/Integer;
    :cond_17
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v10

    .line 1388
    .local v10, "isEndYLeap":Z
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/Integer;

    .line 1390
    .local v23, "orgEndMonthDays":[Ljava/lang/Integer;
    if-nez v23, :cond_19

    .line 1391
    if-eqz v10, :cond_18

    .line 1392
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    .line 1393
    const/4 v13, 0x0

    .restart local v13    # "l":I
    :goto_e
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v13, v0, :cond_19

    .line 1394
    new-instance v37, Ljava/lang/Integer;

    sget-object v38, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_NUM_DAYS:[I

    aget v38, v38, v13

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v23, v13

    .line 1393
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 1397
    .end local v13    # "l":I
    :cond_18
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    .line 1398
    const/4 v13, 0x0

    .restart local v13    # "l":I
    :goto_f
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v13, v0, :cond_19

    .line 1399
    new-instance v37, Ljava/lang/Integer;

    sget-object v38, Lorg/threeten/bp/chrono/HijrahDate;->NUM_DAYS:[I

    aget v38, v38, v13

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v23, v13

    .line 1398
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    .line 1404
    .end local v13    # "l":I
    :cond_19
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    .line 1406
    .local v19, "newEndMonthDays":[Ljava/lang/Integer;
    const/16 v18, 0x0

    :goto_10
    const/16 v37, 0xc

    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_1b

    .line 1407
    move/from16 v0, v18

    move/from16 v1, p3

    if-le v0, v1, :cond_1a

    .line 1408
    new-instance v37, Ljava/lang/Integer;

    aget-object v38, v23, v18

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    add-int v38, v38, p4

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v19, v18

    .line 1406
    :goto_11
    add-int/lit8 v18, v18, 0x1

    goto :goto_10

    .line 1412
    :cond_1a
    new-instance v37, Ljava/lang/Integer;

    aget-object v38, v23, v18

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v19, v18

    goto :goto_11

    .line 1417
    :cond_1b
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/lang/Integer;

    .line 1423
    .local v24, "orgEndMonthLengths":[Ljava/lang/Integer;
    if-nez v24, :cond_1d

    .line 1424
    if-eqz v10, :cond_1c

    .line 1425
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v24, v0

    .line 1426
    const/4 v13, 0x0

    .restart local v13    # "l":I
    :goto_12
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v13, v0, :cond_1d

    .line 1427
    new-instance v37, Ljava/lang/Integer;

    sget-object v38, Lorg/threeten/bp/chrono/HijrahDate;->LEAP_MONTH_LENGTH:[I

    aget v38, v38, v13

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v24, v13

    .line 1426
    add-int/lit8 v13, v13, 0x1

    goto :goto_12

    .line 1430
    .end local v13    # "l":I
    :cond_1c
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v24, v0

    .line 1431
    const/4 v13, 0x0

    .restart local v13    # "l":I
    :goto_13
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v13, v0, :cond_1d

    .line 1432
    new-instance v37, Ljava/lang/Integer;

    sget-object v38, Lorg/threeten/bp/chrono/HijrahDate;->MONTH_LENGTH:[I

    aget v38, v38, v13

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v24, v13

    .line 1431
    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    .line 1437
    .end local v13    # "l":I
    :cond_1d
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v20, v0

    .line 1439
    .local v20, "newEndMonthLengths":[Ljava/lang/Integer;
    const/16 v18, 0x0

    :goto_14
    const/16 v37, 0xc

    move/from16 v0, v18

    move/from16 v1, v37

    if-ge v0, v1, :cond_1f

    .line 1440
    move/from16 v0, v18

    move/from16 v1, p3

    if-ne v0, v1, :cond_1e

    .line 1441
    new-instance v37, Ljava/lang/Integer;

    aget-object v38, v24, v18

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    add-int v38, v38, p4

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v20, v18

    .line 1439
    :goto_15
    add-int/lit8 v18, v18, 0x1

    goto :goto_14

    .line 1444
    :cond_1e
    new-instance v37, Ljava/lang/Integer;

    aget-object v38, v24, v18

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/Integer;-><init>(I)V

    aput-object v37, v20, v18

    goto :goto_15

    .line 1449
    :cond_1f
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    move/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [Ljava/lang/Integer;

    .line 1453
    .local v36, "startMonthLengths":[Ljava/lang/Integer;
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Integer;

    .line 1455
    .local v9, "endMonthLengths":[Ljava/lang/Integer;
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    move/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [Ljava/lang/Integer;

    .line 1457
    .local v34, "startMonthDays":[Ljava/lang/Integer;
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v37 .. v38}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Integer;

    .line 1459
    .local v7, "endMonthDays":[Ljava/lang/Integer;
    aget-object v37, v36, p1

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v35

    .line 1460
    .local v35, "startMonthLength":I
    aget-object v37, v9, p3

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1461
    .local v8, "endMonthLength":I
    const/16 v37, 0xb

    aget-object v37, v34, v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v37

    const/16 v38, 0xb

    aget-object v38, v36, v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    add-int v33, v37, v38

    .line 1463
    .local v33, "startMonthDay":I
    const/16 v37, 0xb

    aget-object v37, v7, v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v37

    const/16 v38, 0xb

    aget-object v38, v9, v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    add-int v6, v37, v38

    .line 1466
    .local v6, "endMonthDay":I
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v38, 0x5

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1468
    .local v17, "maxMonthLength":I
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v38, 0x5

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1471
    .local v15, "leastMaxMonthLength":I
    move/from16 v0, v17

    move/from16 v1, v35

    if-ge v0, v1, :cond_20

    .line 1472
    move/from16 v17, v35

    .line 1474
    :cond_20
    move/from16 v0, v17

    if-ge v0, v8, :cond_21

    .line 1475
    move/from16 v17, v8

    .line 1477
    :cond_21
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v38, 0x5

    new-instance v39, Ljava/lang/Integer;

    move-object/from16 v0, v39

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v39, v37, v38

    .line 1479
    move/from16 v0, v35

    if-le v15, v0, :cond_22

    .line 1480
    move/from16 v15, v35

    .line 1482
    :cond_22
    if-le v15, v8, :cond_23

    .line 1483
    move v15, v8

    .line 1485
    :cond_23
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v38, 0x5

    new-instance v39, Ljava/lang/Integer;

    move-object/from16 v0, v39

    invoke-direct {v0, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v39, v37, v38

    .line 1488
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v38, 0x6

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1489
    .local v16, "maxMonthDay":I
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v38, 0x6

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1492
    .local v14, "leastMaxMonthDay":I
    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_24

    .line 1493
    move/from16 v16, v33

    .line 1495
    :cond_24
    move/from16 v0, v16

    if-ge v0, v6, :cond_25

    .line 1496
    move/from16 v16, v6

    .line 1499
    :cond_25
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v38, 0x6

    new-instance v39, Ljava/lang/Integer;

    move-object/from16 v0, v39

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v39, v37, v38

    .line 1501
    move/from16 v0, v33

    if-le v14, v0, :cond_26

    .line 1502
    move/from16 v14, v33

    .line 1504
    :cond_26
    if-le v14, v6, :cond_27

    .line 1505
    move v14, v6

    .line 1507
    :cond_27
    sget-object v37, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    const/16 v38, 0x6

    new-instance v39, Ljava/lang/Integer;

    move-object/from16 v0, v39

    invoke-direct {v0, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v39, v37, v38

    .line 1509
    return-void
.end method

.method private static checkValidDayOfMonth(I)V
    .locals 3
    .param p0, "dayOfMonth"    # I

    .prologue
    .line 538
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    invoke-static {}, Lorg/threeten/bp/chrono/HijrahDate;->getMaximumDayOfMonth()I

    move-result v0

    if-le p0, v0, :cond_1

    .line 540
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid day of month of Hijrah date, day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " greater than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/threeten/bp/chrono/HijrahDate;->getMaximumDayOfMonth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or less than 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_1
    return-void
.end method

.method private static checkValidDayOfYear(I)V
    .locals 2
    .param p0, "dayOfYear"    # I

    .prologue
    .line 525
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    invoke-static {}, Lorg/threeten/bp/chrono/HijrahDate;->getMaximumDayOfYear()I

    move-result v0

    if-le p0, v0, :cond_1

    .line 527
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Invalid day of year of Hijrah date"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_1
    return-void
.end method

.method private static checkValidMonth(I)V
    .locals 2
    .param p0, "month"    # I

    .prologue
    .line 532
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc

    if-le p0, v0, :cond_1

    .line 533
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Invalid month of Hijrah date"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_1
    return-void
.end method

.method private static checkValidYearOfEra(I)V
    .locals 2
    .param p0, "yearOfEra"    # I

    .prologue
    .line 518
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x270f

    if-le p0, v0, :cond_1

    .line 520
    :cond_0
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Invalid year of Hijrah Era"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_1
    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 579
    sget-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->INSTANCE:Lorg/threeten/bp/chrono/HijrahChronology;

    invoke-virtual {v0, p0}, Lorg/threeten/bp/chrono/HijrahChronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method private static getAdjustedCycle(I)[Ljava/lang/Integer;
    .locals 4
    .param p0, "cycleNumber"    # I

    .prologue
    .line 974
    :try_start_0
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    .local v0, "cycles":[Ljava/lang/Integer;
    :goto_0
    if-nez v0, :cond_0

    .line 979
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_CYCLE_YEARS:[Ljava/lang/Integer;

    .line 981
    :cond_0
    return-object v0

    .line 975
    .end local v0    # "cycles":[Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 976
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v0, 0x0

    .restart local v0    # "cycles":[Ljava/lang/Integer;
    goto :goto_0
.end method

.method private static getAdjustedMonthDays(I)[Ljava/lang/Integer;
    .locals 4
    .param p0, "year"    # I

    .prologue
    .line 993
    :try_start_0
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_DAYS:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    .local v1, "newMonths":[Ljava/lang/Integer;
    :goto_0
    if-nez v1, :cond_0

    .line 998
    int-to-long v2, p0

    invoke-static {v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 999
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_DAYS:[Ljava/lang/Integer;

    .line 1004
    :cond_0
    :goto_1
    return-object v1

    .line 994
    .end local v1    # "newMonths":[Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, 0x0

    .restart local v1    # "newMonths":[Ljava/lang/Integer;
    goto :goto_0

    .line 1001
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_MONTH_DAYS:[Ljava/lang/Integer;

    goto :goto_1
.end method

.method private static getAdjustedMonthLength(I)[Ljava/lang/Integer;
    .locals 4
    .param p0, "year"    # I

    .prologue
    .line 1016
    :try_start_0
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MONTH_LENGTHS:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    .local v1, "newMonths":[Ljava/lang/Integer;
    :goto_0
    if-nez v1, :cond_0

    .line 1021
    int-to-long v2, p0

    invoke-static {v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1022
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_LEAP_MONTH_LENGTHS:[Ljava/lang/Integer;

    .line 1027
    :cond_0
    :goto_1
    return-object v1

    .line 1017
    .end local v1    # "newMonths":[Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, 0x0

    .restart local v1    # "newMonths":[Ljava/lang/Integer;
    goto :goto_0

    .line 1024
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_MONTH_LENGTHS:[Ljava/lang/Integer;

    goto :goto_1
.end method

.method private static getConfigFileInputStream()Ljava/io/InputStream;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/16 v15, 0x5c

    const/16 v14, 0x2f

    .line 1677
    const-string v12, "org.threeten.bp.i18n.HijrahDate.deviationConfigFile"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1680
    .local v5, "fileName":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 1681
    const-string v5, "hijrah_deviation.cfg"

    .line 1684
    :cond_0
    const-string v12, "org.threeten.bp.i18n.HijrahDate.deviationConfigDir"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1687
    .local v1, "dir":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1688
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "file.separator"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1690
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "file.separator"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1692
    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-char v13, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1693
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1695
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1754
    .end local v4    # "file":Ljava/io/File;
    :cond_3
    :goto_0
    return-object v11

    .line 1696
    .restart local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 1697
    .local v6, "ioe":Ljava/io/IOException;
    throw v6

    .line 1703
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_4
    const-string v12, "java.class.path"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1704
    .local v0, "classPath":Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    sget-object v12, Lorg/threeten/bp/chrono/HijrahDate;->PATH_SEP:Ljava/lang/String;

    invoke-direct {v8, v0, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    .local v8, "st":Ljava/util/StringTokenizer;
    :cond_5
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1706
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 1707
    .local v7, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1708
    .restart local v4    # "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1709
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1710
    new-instance v3, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-char v13, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1714
    :try_start_1
    new-instance v11, Ljava/io/FileInputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-char v13, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-char v13, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1717
    :catch_1
    move-exception v6

    .line 1718
    .restart local v6    # "ioe":Ljava/io/IOException;
    throw v6

    .line 1724
    .end local v3    # "f":Ljava/io/File;
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_6
    :try_start_2
    new-instance v10, Ljava/util/zip/ZipFile;

    invoke-direct {v10, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1729
    .local v10, "zip":Ljava/util/zip/ZipFile;
    :goto_1
    if-eqz v10, :cond_5

    .line 1730
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/threeten/bp/chrono/HijrahDate;->DEFAULT_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-char v13, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1732
    .local v9, "targetFile":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 1734
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    if-nez v2, :cond_8

    .line 1735
    sget-char v12, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    if-ne v12, v14, :cond_9

    .line 1736
    invoke-virtual {v9, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 1740
    :cond_7
    :goto_2
    invoke-virtual {v10, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 1743
    :cond_8
    if-eqz v2, :cond_5

    .line 1745
    :try_start_3
    invoke-virtual {v10, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v11

    goto/16 :goto_0

    .line 1725
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v9    # "targetFile":Ljava/lang/String;
    .end local v10    # "zip":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v6

    .line 1726
    .restart local v6    # "ioe":Ljava/io/IOException;
    const/4 v10, 0x0

    .restart local v10    # "zip":Ljava/util/zip/ZipFile;
    goto :goto_1

    .line 1737
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v9    # "targetFile":Ljava/lang/String;
    :cond_9
    sget-char v12, Lorg/threeten/bp/chrono/HijrahDate;->FILE_SEP:C

    if-ne v12, v15, :cond_7

    .line 1738
    invoke-virtual {v9, v15, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 1746
    :catch_3
    move-exception v6

    .line 1747
    .restart local v6    # "ioe":Ljava/io/IOException;
    throw v6
.end method

.method private static getCycleNumber(J)I
    .locals 6
    .param p0, "epochDay"    # J

    .prologue
    .line 897
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    .line 900
    .local v1, "days":[Ljava/lang/Long;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 901
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, p0, v4

    if-gez v4, :cond_0

    .line 902
    add-int/lit8 v0, v3, -0x1

    .line 909
    :goto_1
    return v0

    .line 900
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 905
    :cond_1
    long-to-int v4, p0

    div-int/lit16 v0, v4, 0x2987
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "cycleNumber":I
    goto :goto_1

    .line 906
    .end local v0    # "cycleNumber":I
    :catch_0
    move-exception v2

    .line 907
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    long-to-int v4, p0

    div-int/lit16 v0, v4, 0x2987

    .restart local v0    # "cycleNumber":I
    goto :goto_1
.end method

.method private static getDayOfCycle(JI)I
    .locals 4
    .param p0, "epochDay"    # J
    .param p2, "cycleNumber"    # I

    .prologue
    .line 923
    :try_start_0
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    aget-object v0, v2, p2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    .local v0, "day":Ljava/lang/Long;
    :goto_0
    if-nez v0, :cond_0

    .line 928
    new-instance v0, Ljava/lang/Long;

    .end local v0    # "day":Ljava/lang/Long;
    mul-int/lit16 v2, p2, 0x2987

    int-to-long v2, v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 930
    .restart local v0    # "day":Ljava/lang/Long;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p0, v2

    long-to-int v2, v2

    return v2

    .line 924
    .end local v0    # "day":Ljava/lang/Long;
    :catch_0
    move-exception v1

    .line 925
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v0, 0x0

    .restart local v0    # "day":Ljava/lang/Long;
    goto :goto_0
.end method

.method private static getDayOfMonth(III)I
    .locals 4
    .param p0, "dayOfYear"    # I
    .param p1, "month"    # I
    .param p2, "year"    # I

    .prologue
    .line 1088
    invoke-static {p2}, Lorg/threeten/bp/chrono/HijrahDate;->getAdjustedMonthDays(I)[Ljava/lang/Integer;

    move-result-object v0

    .line 1090
    .local v0, "newMonths":[Ljava/lang/Integer;
    if-ltz p0, :cond_1

    .line 1091
    if-lez p1, :cond_0

    .line 1092
    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p0, v1

    .line 1102
    .end local p0    # "dayOfYear":I
    :cond_0
    :goto_0
    return p0

    .line 1097
    .restart local p0    # "dayOfYear":I
    :cond_1
    int-to-long v2, p2

    invoke-static {v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit16 p0, p0, 0x163

    .line 1099
    :goto_1
    if-lez p1, :cond_0

    .line 1100
    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p0, v1

    goto :goto_0

    .line 1097
    :cond_2
    add-int/lit16 p0, p0, 0x162

    goto :goto_1
.end method

.method private static getDayOfYear(III)I
    .locals 2
    .param p0, "cycleNumber"    # I
    .param p1, "dayOfCycle"    # I
    .param p2, "yearInCycle"    # I

    .prologue
    .line 1039
    invoke-static {p0}, Lorg/threeten/bp/chrono/HijrahDate;->getAdjustedCycle(I)[Ljava/lang/Integer;

    move-result-object v0

    .line 1041
    .local v0, "cycles":[Ljava/lang/Integer;
    if-lez p1, :cond_0

    .line 1042
    aget-object v1, v0, p2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, p1, v1

    .line 1044
    :goto_0
    return v1

    :cond_0
    aget-object v1, v0, p2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p1

    goto :goto_0
.end method

.method private static getGregorianEpochDay(III)J
    .locals 4
    .param p0, "prolepticYear"    # I
    .param p1, "monthOfYear"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 852
    invoke-static {p0}, Lorg/threeten/bp/chrono/HijrahDate;->yearToGregorianEpochDay(I)J

    move-result-wide v0

    .line 853
    .local v0, "day":J
    add-int/lit8 v2, p1, -0x1

    invoke-static {v2, p0}, Lorg/threeten/bp/chrono/HijrahDate;->getMonthDays(II)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 854
    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 855
    return-wide v0
.end method

.method private static getHijrahDateInfo(J)[I
    .locals 16
    .param p0, "gregorianDays"    # J

    .prologue
    .line 798
    const-wide/32 v12, -0x78274

    sub-long v6, p0, v12

    .line 800
    .local v6, "epochDay":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_0

    .line 801
    invoke-static {v6, v7}, Lorg/threeten/bp/chrono/HijrahDate;->getCycleNumber(J)I

    move-result v0

    .line 802
    .local v0, "cycleNumber":I
    invoke-static {v6, v7, v0}, Lorg/threeten/bp/chrono/HijrahDate;->getDayOfCycle(JI)I

    move-result v3

    .line 803
    .local v3, "dayOfCycle":I
    int-to-long v12, v3

    invoke-static {v0, v12, v13}, Lorg/threeten/bp/chrono/HijrahDate;->getYearInCycle(IJ)I

    move-result v11

    .line 804
    .local v11, "yearInCycle":I
    invoke-static {v0, v3, v11}, Lorg/threeten/bp/chrono/HijrahDate;->getDayOfYear(III)I

    move-result v5

    .line 806
    .local v5, "dayOfYear":I
    mul-int/lit8 v12, v0, 0x1e

    add-int/2addr v12, v11

    add-int/lit8 v10, v12, 0x1

    .line 807
    .local v10, "year":I
    invoke-static {v5, v10}, Lorg/threeten/bp/chrono/HijrahDate;->getMonthOfYear(II)I

    move-result v9

    .line 808
    .local v9, "month":I
    invoke-static {v5, v9, v10}, Lorg/threeten/bp/chrono/HijrahDate;->getDayOfMonth(III)I

    move-result v1

    .line 809
    .local v1, "date":I
    add-int/lit8 v1, v1, 0x1

    .line 810
    sget-object v12, Lorg/threeten/bp/chrono/HijrahEra;->AH:Lorg/threeten/bp/chrono/HijrahEra;

    invoke-virtual {v12}, Lorg/threeten/bp/chrono/HijrahEra;->getValue()I

    move-result v8

    .line 830
    .local v8, "era":I
    :goto_0
    const-wide/16 v12, 0x5

    add-long/2addr v12, v6

    const-wide/16 v14, 0x7

    rem-long/2addr v12, v14

    long-to-int v4, v12

    .line 831
    .local v4, "dayOfWeek":I
    if-gtz v4, :cond_3

    const/4 v12, 0x7

    :goto_1
    add-int/2addr v4, v12

    .line 833
    const/4 v12, 0x6

    new-array v2, v12, [I

    .line 834
    .local v2, "dateInfo":[I
    const/4 v12, 0x0

    aput v8, v2, v12

    .line 835
    const/4 v12, 0x1

    aput v10, v2, v12

    .line 836
    const/4 v12, 0x2

    add-int/lit8 v13, v9, 0x1

    aput v13, v2, v12

    .line 837
    const/4 v12, 0x3

    aput v1, v2, v12

    .line 838
    const/4 v12, 0x4

    add-int/lit8 v13, v5, 0x1

    aput v13, v2, v12

    .line 839
    const/4 v12, 0x5

    aput v4, v2, v12

    .line 840
    return-object v2

    .line 812
    .end local v0    # "cycleNumber":I
    .end local v1    # "date":I
    .end local v2    # "dateInfo":[I
    .end local v3    # "dayOfCycle":I
    .end local v4    # "dayOfWeek":I
    .end local v5    # "dayOfYear":I
    .end local v8    # "era":I
    .end local v9    # "month":I
    .end local v10    # "year":I
    .end local v11    # "yearInCycle":I
    :cond_0
    long-to-int v12, v6

    div-int/lit16 v0, v12, 0x2987

    .line 813
    .restart local v0    # "cycleNumber":I
    long-to-int v12, v6

    rem-int/lit16 v3, v12, 0x2987

    .line 814
    .restart local v3    # "dayOfCycle":I
    if-nez v3, :cond_1

    .line 815
    const/16 v3, -0x2987

    .line 816
    add-int/lit8 v0, v0, 0x1

    .line 818
    :cond_1
    int-to-long v12, v3

    invoke-static {v0, v12, v13}, Lorg/threeten/bp/chrono/HijrahDate;->getYearInCycle(IJ)I

    move-result v11

    .line 819
    .restart local v11    # "yearInCycle":I
    invoke-static {v0, v3, v11}, Lorg/threeten/bp/chrono/HijrahDate;->getDayOfYear(III)I

    move-result v5

    .line 820
    .restart local v5    # "dayOfYear":I
    mul-int/lit8 v12, v0, 0x1e

    sub-int v10, v12, v11

    .line 821
    .restart local v10    # "year":I
    rsub-int/lit8 v10, v10, 0x1

    .line 822
    int-to-long v12, v10

    invoke-static {v12, v13}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v12

    if-eqz v12, :cond_2

    add-int/lit16 v5, v5, 0x163

    .line 824
    :goto_2
    invoke-static {v5, v10}, Lorg/threeten/bp/chrono/HijrahDate;->getMonthOfYear(II)I

    move-result v9

    .line 825
    .restart local v9    # "month":I
    invoke-static {v5, v9, v10}, Lorg/threeten/bp/chrono/HijrahDate;->getDayOfMonth(III)I

    move-result v1

    .line 826
    .restart local v1    # "date":I
    add-int/lit8 v1, v1, 0x1

    .line 827
    sget-object v12, Lorg/threeten/bp/chrono/HijrahEra;->BEFORE_AH:Lorg/threeten/bp/chrono/HijrahEra;

    invoke-virtual {v12}, Lorg/threeten/bp/chrono/HijrahEra;->getValue()I

    move-result v8

    .restart local v8    # "era":I
    goto :goto_0

    .line 822
    .end local v1    # "date":I
    .end local v8    # "era":I
    .end local v9    # "month":I
    :cond_2
    add-int/lit16 v5, v5, 0x162

    goto :goto_2

    .line 831
    .restart local v1    # "date":I
    .restart local v4    # "dayOfWeek":I
    .restart local v8    # "era":I
    .restart local v9    # "month":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_1
.end method

.method static getMaximumDayOfMonth()I
    .locals 2

    .prologue
    .line 1186
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static getMaximumDayOfYear()I
    .locals 2

    .prologue
    .line 1204
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_MAX_VALUES:[Ljava/lang/Integer;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getMonthDays(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    .line 1125
    invoke-static {p1}, Lorg/threeten/bp/chrono/HijrahDate;->getAdjustedMonthDays(I)[Ljava/lang/Integer;

    move-result-object v0

    .line 1126
    .local v0, "newMonths":[Ljava/lang/Integer;
    aget-object v1, v0, p0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method static getMonthLength(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    .line 1137
    invoke-static {p1}, Lorg/threeten/bp/chrono/HijrahDate;->getAdjustedMonthLength(I)[Ljava/lang/Integer;

    move-result-object v0

    .line 1138
    .local v0, "newMonths":[Ljava/lang/Integer;
    aget-object v1, v0, p0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private static getMonthOfYear(II)I
    .locals 6
    .param p0, "dayOfYear"    # I
    .param p1, "year"    # I

    .prologue
    const/16 v2, 0xb

    .line 1057
    invoke-static {p1}, Lorg/threeten/bp/chrono/HijrahDate;->getAdjustedMonthDays(I)[Ljava/lang/Integer;

    move-result-object v1

    .line 1059
    .local v1, "newMonths":[Ljava/lang/Integer;
    if-ltz p0, :cond_2

    .line 1060
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1061
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge p0, v3, :cond_1

    .line 1062
    add-int/lit8 v2, v0, -0x1

    .line 1074
    :cond_0
    :goto_1
    return v2

    .line 1060
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1067
    .end local v0    # "i":I
    :cond_2
    int-to-long v4, p1

    invoke-static {v4, v5}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit16 p0, p0, 0x163

    .line 1069
    :goto_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1070
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge p0, v3, :cond_4

    .line 1071
    add-int/lit8 v2, v0, -0x1

    goto :goto_1

    .line 1067
    .end local v0    # "i":I
    :cond_3
    add-int/lit16 p0, p0, 0x162

    goto :goto_2

    .line 1069
    .restart local v0    # "i":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method static getSmallestMaximumDayOfMonth()I
    .locals 2

    .prologue
    .line 1195
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static getSmallestMaximumDayOfYear()I
    .locals 2

    .prologue
    .line 1213
    sget-object v0, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_LEAST_MAX_VALUES:[Ljava/lang/Integer;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getYearInCycle(IJ)I
    .locals 7
    .param p0, "cycleNumber"    # I
    .param p1, "dayOfCycle"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/16 v2, 0x1d

    .line 941
    invoke-static {p0}, Lorg/threeten/bp/chrono/HijrahDate;->getAdjustedCycle(I)[Ljava/lang/Integer;

    move-result-object v0

    .line 942
    .local v0, "cycles":[Ljava/lang/Integer;
    cmp-long v3, p1, v4

    if-nez v3, :cond_1

    .line 943
    const/4 v2, 0x0

    .line 960
    :cond_0
    :goto_0
    return v2

    .line 946
    :cond_1
    cmp-long v3, p1, v4

    if-lez v3, :cond_3

    .line 947
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 948
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    cmp-long v3, p1, v4

    if-gez v3, :cond_2

    .line 949
    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 947
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 954
    .end local v1    # "i":I
    :cond_3
    neg-long p1, p1

    .line 955
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 956
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    cmp-long v3, p1, v4

    if-gtz v3, :cond_4

    .line 957
    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 955
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method static getYearLength(I)I
    .locals 6
    .param p0, "year"    # I

    .prologue
    .line 1154
    add-int/lit8 v4, p0, -0x1

    div-int/lit8 v0, v4, 0x1e

    .line 1157
    .local v0, "cycleNumber":I
    :try_start_0
    sget-object v4, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLE_YEARS:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    .local v1, "cycleYears":[Ljava/lang/Integer;
    :goto_0
    if-eqz v1, :cond_1

    .line 1162
    add-int/lit8 v4, p0, -0x1

    rem-int/lit8 v3, v4, 0x1e

    .line 1163
    .local v3, "yearInCycle":I
    const/16 v4, 0x1d

    if-ne v3, v4, :cond_0

    .line 1164
    sget-object v4, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    sget-object v5, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1171
    .end local v3    # "yearInCycle":I
    :goto_1
    return v4

    .line 1158
    .end local v1    # "cycleYears":[Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 1159
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, 0x0

    .restart local v1    # "cycleYears":[Ljava/lang/Integer;
    goto :goto_0

    .line 1168
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v3    # "yearInCycle":I
    :cond_0
    add-int/lit8 v4, v3, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_1

    .line 1171
    .end local v3    # "yearInCycle":I
    :cond_1
    int-to-long v4, p0

    invoke-static {v4, v5}, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear(J)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x163

    goto :goto_1

    :cond_2
    const/16 v4, 0x162

    goto :goto_1
.end method

.method static isLeapYear(J)Z
    .locals 6
    .param p0, "year"    # J

    .prologue
    const-wide/16 v4, 0xb

    .line 1114
    const-wide/16 v0, 0xe

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    .end local p0    # "year":J
    :goto_0
    mul-long v2, v4, p0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    rem-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .restart local p0    # "year":J
    :cond_0
    neg-long p0, p0

    goto :goto_0

    .end local p0    # "year":J
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static now()Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1

    .prologue
    .line 438
    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/chrono/HijrahDate;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1
    .param p0, "clock"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 471
    sget-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->INSTANCE:Lorg/threeten/bp/chrono/HijrahChronology;

    invoke-virtual {v0, p0}, Lorg/threeten/bp/chrono/HijrahChronology;->dateNow(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1
    .param p0, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 455
    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/chrono/HijrahDate;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 2
    .param p0, "prolepticYear"    # I
    .param p1, "monthOfYear"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 487
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    sget-object v0, Lorg/threeten/bp/chrono/HijrahEra;->AH:Lorg/threeten/bp/chrono/HijrahEra;

    invoke-static {v0, p0, p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->of(Lorg/threeten/bp/chrono/HijrahEra;III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/threeten/bp/chrono/HijrahEra;->BEFORE_AH:Lorg/threeten/bp/chrono/HijrahEra;

    rsub-int/lit8 v1, p0, 0x1

    invoke-static {v0, v1, p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->of(Lorg/threeten/bp/chrono/HijrahEra;III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    goto :goto_0
.end method

.method static of(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 3
    .param p0, "date"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 553
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v0

    .line 554
    .local v0, "gregorianDays":J
    new-instance v2, Lorg/threeten/bp/chrono/HijrahDate;

    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/chrono/HijrahDate;-><init>(J)V

    return-object v2
.end method

.method static of(Lorg/threeten/bp/chrono/HijrahEra;III)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 3
    .param p0, "era"    # Lorg/threeten/bp/chrono/HijrahEra;
    .param p1, "yearOfEra"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 505
    const-string v2, "era"

    invoke-static {p0, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 506
    invoke-static {p1}, Lorg/threeten/bp/chrono/HijrahDate;->checkValidYearOfEra(I)V

    .line 507
    invoke-static {p2}, Lorg/threeten/bp/chrono/HijrahDate;->checkValidMonth(I)V

    .line 508
    invoke-static {p3}, Lorg/threeten/bp/chrono/HijrahDate;->checkValidDayOfMonth(I)V

    .line 509
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahEra;->prolepticYear(I)I

    move-result v2

    invoke-static {v2, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->getGregorianEpochDay(III)J

    move-result-wide v0

    .line 510
    .local v0, "gregorianDays":J
    new-instance v2, Lorg/threeten/bp/chrono/HijrahDate;

    invoke-direct {v2, v0, v1}, Lorg/threeten/bp/chrono/HijrahDate;-><init>(J)V

    return-object v2
.end method

.method static ofEpochDay(J)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 2
    .param p0, "epochDay"    # J

    .prologue
    .line 558
    new-instance v0, Lorg/threeten/bp/chrono/HijrahDate;

    invoke-direct {v0, p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;-><init>(J)V

    return-object v0
.end method

.method private static parseLine(Ljava/lang/String;I)V
    .locals 25
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1558
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v22, ";"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    .local v15, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1560
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1561
    .local v3, "deviationElement":Ljava/lang/String;
    const/16 v22, 0x3a

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 1562
    .local v12, "offsetIndex":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v12, v0, :cond_4

    .line 1563
    add-int/lit8 v22, v12, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1567
    .local v13, "offsetString":Ljava/lang/String;
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1573
    .local v11, "offset":I
    const/16 v22, 0x2d

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 1574
    .local v14, "separatorIndex":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v14, v0, :cond_3

    .line 1575
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1577
    .local v16, "startDateStg":Ljava/lang/String;
    add-int/lit8 v22, v14, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1579
    .local v4, "endDateStg":Ljava/lang/String;
    const/16 v22, 0x2f

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 1580
    .local v17, "startDateYearSepIndex":I
    const/16 v22, 0x2f

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1581
    .local v5, "endDateYearSepIndex":I
    const/16 v20, -0x1

    .line 1582
    .local v20, "startYear":I
    const/4 v8, -0x1

    .line 1583
    .local v8, "endYear":I
    const/16 v18, -0x1

    .line 1584
    .local v18, "startMonth":I
    const/4 v6, -0x1

    .line 1585
    .local v6, "endMonth":I
    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 1586
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 1588
    .local v21, "startYearStg":Ljava/lang/String;
    add-int/lit8 v22, v17, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1592
    .local v19, "startMonthStg":Ljava/lang/String;
    :try_start_1
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v20

    .line 1599
    :try_start_2
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v18

    .line 1610
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v5, v0, :cond_1

    .line 1611
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1613
    .local v9, "endYearStg":Ljava/lang/String;
    add-int/lit8 v22, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1616
    .local v7, "endMonthStg":Ljava/lang/String;
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    .line 1623
    :try_start_4
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v6

    .line 1634
    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v8, v0, :cond_2

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v6, v0, :cond_2

    .line 1636
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1, v8, v6, v11}, Lorg/threeten/bp/chrono/HijrahDate;->addDeviationAsHijrah(IIIII)V

    goto/16 :goto_0

    .line 1568
    .end local v4    # "endDateStg":Ljava/lang/String;
    .end local v5    # "endDateYearSepIndex":I
    .end local v6    # "endMonth":I
    .end local v7    # "endMonthStg":Ljava/lang/String;
    .end local v8    # "endYear":I
    .end local v9    # "endYearStg":Ljava/lang/String;
    .end local v11    # "offset":I
    .end local v14    # "separatorIndex":I
    .end local v16    # "startDateStg":Ljava/lang/String;
    .end local v17    # "startDateYearSepIndex":I
    .end local v18    # "startMonth":I
    .end local v19    # "startMonthStg":Ljava/lang/String;
    .end local v20    # "startYear":I
    .end local v21    # "startYearStg":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1569
    .local v10, "ex":Ljava/lang/NumberFormatException;
    new-instance v22, Ljava/text/ParseException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Offset is not properly set at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v22

    .line 1593
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    .restart local v4    # "endDateStg":Ljava/lang/String;
    .restart local v5    # "endDateYearSepIndex":I
    .restart local v6    # "endMonth":I
    .restart local v8    # "endYear":I
    .restart local v11    # "offset":I
    .restart local v14    # "separatorIndex":I
    .restart local v16    # "startDateStg":Ljava/lang/String;
    .restart local v17    # "startDateYearSepIndex":I
    .restart local v18    # "startMonth":I
    .restart local v19    # "startMonthStg":Ljava/lang/String;
    .restart local v20    # "startYear":I
    .restart local v21    # "startYearStg":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1594
    .restart local v10    # "ex":Ljava/lang/NumberFormatException;
    new-instance v22, Ljava/text/ParseException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Start year is not properly set at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v22

    .line 1600
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v10

    .line 1601
    .restart local v10    # "ex":Ljava/lang/NumberFormatException;
    new-instance v22, Ljava/text/ParseException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Start month is not properly set at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v22

    .line 1606
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    .end local v19    # "startMonthStg":Ljava/lang/String;
    .end local v21    # "startYearStg":Ljava/lang/String;
    :cond_0
    new-instance v22, Ljava/text/ParseException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Start year/month has incorrect format at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v22

    .line 1617
    .restart local v7    # "endMonthStg":Ljava/lang/String;
    .restart local v9    # "endYearStg":Ljava/lang/String;
    .restart local v19    # "startMonthStg":Ljava/lang/String;
    .restart local v21    # "startYearStg":Ljava/lang/String;
    :catch_3
    move-exception v10

    .line 1618
    .restart local v10    # "ex":Ljava/lang/NumberFormatException;
    new-instance v22, Ljava/text/ParseException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "End year is not properly set at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v22

    .line 1624
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v10

    .line 1625
    .restart local v10    # "ex":Ljava/lang/NumberFormatException;
    new-instance v22, Ljava/text/ParseException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "End month is not properly set at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v22

    .line 1630
    .end local v7    # "endMonthStg":Ljava/lang/String;
    .end local v9    # "endYearStg":Ljava/lang/String;
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v22, Ljava/text/ParseException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "End year/month has incorrect format at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v22

    .line 1639
    .restart local v7    # "endMonthStg":Ljava/lang/String;
    .restart local v9    # "endYearStg":Ljava/lang/String;
    :cond_2
    new-instance v22, Ljava/text/ParseException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown error at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v22

    .line 1643
    .end local v4    # "endDateStg":Ljava/lang/String;
    .end local v5    # "endDateYearSepIndex":I
    .end local v6    # "endMonth":I
    .end local v7    # "endMonthStg":Ljava/lang/String;
    .end local v8    # "endYear":I
    .end local v9    # "endYearStg":Ljava/lang/String;
    .end local v16    # "startDateStg":Ljava/lang/String;
    .end local v17    # "startDateYearSepIndex":I
    .end local v18    # "startMonth":I
    .end local v19    # "startMonthStg":Ljava/lang/String;
    .end local v20    # "startYear":I
    .end local v21    # "startYearStg":Ljava/lang/String;
    :cond_3
    new-instance v22, Ljava/text/ParseException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Start and end year/month has incorrect format at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v22

    .line 1648
    .end local v11    # "offset":I
    .end local v13    # "offsetString":Ljava/lang/String;
    .end local v14    # "separatorIndex":I
    :cond_4
    new-instance v22, Ljava/text/ParseException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Offset has incorrect format at line "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v22

    .line 1652
    .end local v3    # "deviationElement":Ljava/lang/String;
    .end local v12    # "offsetIndex":I
    :cond_5
    return-void
.end method

.method private static readDeviationConfig()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1530
    invoke-static {}, Lorg/threeten/bp/chrono/HijrahDate;->getConfigFileInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1531
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_2

    .line 1532
    const/4 v0, 0x0

    .line 1534
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1535
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    const-string v3, ""

    .line 1536
    .local v3, "line":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1537
    .local v4, "num":I
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1538
    add-int/lit8 v4, v4, 0x1

    .line 1539
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1540
    invoke-static {v3, v4}, Lorg/threeten/bp/chrono/HijrahDate;->parseLine(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1543
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "num":I
    :catchall_0
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v0, :cond_0

    .line 1544
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_0
    throw v5

    .line 1543
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "num":I
    :cond_1
    if-eqz v1, :cond_2

    .line 1544
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1548
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "num":I
    :cond_2
    return-void

    .line 1543
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1770
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1771
    .local v2, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 1772
    .local v1, "month":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 1773
    .local v0, "dayOfMonth":I
    sget-object v3, Lorg/threeten/bp/chrono/HijrahChronology;->INSTANCE:Lorg/threeten/bp/chrono/HijrahChronology;

    invoke-virtual {v3, v2, v1, v0}, Lorg/threeten/bp/chrono/HijrahChronology;->date(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v3

    return-object v3
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 612
    new-instance v0, Lorg/threeten/bp/chrono/HijrahDate;

    iget-wide v2, p0, Lorg/threeten/bp/chrono/HijrahDate;->gregorianEpochDay:J

    invoke-direct {v0, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;-><init>(J)V

    return-object v0
.end method

.method private static resolvePreviousValid(III)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 2
    .param p0, "yearOfEra"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 698
    add-int/lit8 v1, p1, -0x1

    invoke-static {v1, p0}, Lorg/threeten/bp/chrono/HijrahDate;->getMonthDays(II)I

    move-result v0

    .line 699
    .local v0, "monthDays":I
    if-le p2, v0, :cond_0

    .line 700
    move p2, v0

    .line 702
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->of(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v1

    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1759
    new-instance v0, Lorg/threeten/bp/chrono/Ser;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method private static yearToGregorianEpochDay(I)J
    .locals 10
    .param p0, "prolepticYear"    # I

    .prologue
    .line 865
    add-int/lit8 v5, p0, -0x1

    div-int/lit8 v1, v5, 0x1e

    .line 866
    .local v1, "cycleNumber":I
    add-int/lit8 v5, p0, -0x1

    rem-int/lit8 v4, v5, 0x1e

    .line 868
    .local v4, "yearInCycle":I
    invoke-static {v1}, Lorg/threeten/bp/chrono/HijrahDate;->getAdjustedCycle(I)[Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 871
    .local v2, "dayInCycle":I
    if-gez v4, :cond_0

    .line 872
    neg-int v2, v2

    .line 878
    :cond_0
    :try_start_0
    sget-object v5, Lorg/threeten/bp/chrono/HijrahDate;->ADJUSTED_CYCLES:[Ljava/lang/Long;

    aget-object v0, v5, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    .local v0, "cycleDays":Ljava/lang/Long;
    :goto_0
    if-nez v0, :cond_1

    .line 884
    new-instance v0, Ljava/lang/Long;

    .end local v0    # "cycleDays":Ljava/lang/Long;
    mul-int/lit16 v5, v1, 0x2987

    int-to-long v6, v5

    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    .line 887
    .restart local v0    # "cycleDays":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    int-to-long v8, v2

    add-long/2addr v6, v8

    const-wide/32 v8, -0x78274

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    return-wide v6

    .line 879
    .end local v0    # "cycleDays":Ljava/lang/Long;
    :catch_0
    move-exception v3

    .line 880
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v0, 0x0

    .restart local v0    # "cycleDays":Ljava/lang/Long;
    goto :goto_0
.end method


# virtual methods
.method public final atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;
    .locals 1
    .param p1, "localTime"    # Lorg/threeten/bp/LocalTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/LocalTime;",
            ")",
            "Lorg/threeten/bp/chrono/ChronoLocalDateTime",
            "<",
            "Lorg/threeten/bp/chrono/HijrahDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChronology()Lorg/threeten/bp/chrono/Chronology;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/HijrahDate;->getChronology()Lorg/threeten/bp/chrono/HijrahChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Lorg/threeten/bp/chrono/HijrahChronology;
    .locals 1

    .prologue
    .line 618
    sget-object v0, Lorg/threeten/bp/chrono/HijrahChronology;->INSTANCE:Lorg/threeten/bp/chrono/HijrahChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Lorg/threeten/bp/chrono/Era;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/HijrahDate;->getEra()Lorg/threeten/bp/chrono/HijrahEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Lorg/threeten/bp/chrono/HijrahEra;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->era:Lorg/threeten/bp/chrono/HijrahEra;

    return-object v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 646
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 647
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 661
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

    .line 648
    :pswitch_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    invoke-virtual {v0}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result v0

    int-to-long v0, v0

    .line 663
    :goto_0
    return-wide v0

    .line 649
    :pswitch_1
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    goto :goto_0

    .line 650
    :pswitch_2
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfYear:I

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    goto :goto_0

    .line 651
    :pswitch_3
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    int-to-long v0, v0

    goto :goto_0

    .line 652
    :pswitch_4
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfYear:I

    int-to-long v0, v0

    goto :goto_0

    .line 653
    :pswitch_5
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/HijrahDate;->toEpochDay()J

    move-result-wide v0

    goto :goto_0

    .line 654
    :pswitch_6
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    goto :goto_0

    .line 655
    :pswitch_7
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfYear:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    goto :goto_0

    .line 656
    :pswitch_8
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    int-to-long v0, v0

    goto :goto_0

    .line 657
    :pswitch_9
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    int-to-long v0, v0

    goto :goto_0

    .line 658
    :pswitch_a
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    int-to-long v0, v0

    goto :goto_0

    .line 659
    :pswitch_b
    iget-object v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->era:Lorg/threeten/bp/chrono/HijrahEra;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/HijrahEra;->getValue()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 663
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    goto :goto_0

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public isLeapYear()Z
    .locals 1

    .prologue
    .line 745
    iget-boolean v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->isLeapYear:Z

    return v0
.end method

.method public lengthOfMonth()I
    .locals 2

    .prologue
    .line 1143
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    invoke-static {v0, v1}, Lorg/threeten/bp/chrono/HijrahDate;->getMonthLength(II)I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 1

    .prologue
    .line 1177
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    invoke-static {v0}, Lorg/threeten/bp/chrono/HijrahDate;->getYearLength(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 722
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/HijrahDate;

    return-object v0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 717
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 712
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/HijrahDate;

    return-object v0
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 707
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/HijrahDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusDays(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 5
    .param p1, "days"    # J

    .prologue
    .line 777
    new-instance v0, Lorg/threeten/bp/chrono/HijrahDate;

    iget-wide v2, p0, Lorg/threeten/bp/chrono/HijrahDate;->gregorianEpochDay:J

    add-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;-><init>(J)V

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->plusMonths(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method plusMonths(J)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 7
    .param p1, "months"    # J

    .prologue
    .line 760
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-nez v3, :cond_0

    .line 772
    .end local p0    # "this":Lorg/threeten/bp/chrono/HijrahDate;
    :goto_0
    return-object p0

    .line 763
    .restart local p0    # "this":Lorg/threeten/bp/chrono/HijrahDate;
    :cond_0
    iget v3, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    add-int/lit8 v0, v3, -0x1

    .line 764
    .local v0, "newMonth":I
    long-to-int v3, p1

    add-int/2addr v0, v3

    .line 765
    div-int/lit8 v2, v0, 0xc

    .line 766
    .local v2, "years":I
    rem-int/lit8 v0, v0, 0xc

    .line 767
    :goto_1
    if-gez v0, :cond_1

    .line 768
    add-int/lit8 v0, v0, 0xc

    .line 769
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v2

    goto :goto_1

    .line 771
    :cond_1
    iget v3, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    invoke-static {v3, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v1

    .line 772
    .local v1, "newYear":I
    iget-object v3, p0, Lorg/threeten/bp/chrono/HijrahDate;->era:Lorg/threeten/bp/chrono/HijrahEra;

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v3, v1, v4, v5}, Lorg/threeten/bp/chrono/HijrahDate;->of(Lorg/threeten/bp/chrono/HijrahEra;III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p0

    goto :goto_0
.end method

.method bridge synthetic plusYears(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->plusYears(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method plusYears(J)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 5
    .param p1, "years"    # J

    .prologue
    .line 751
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 755
    .end local p0    # "this":Lorg/threeten/bp/chrono/HijrahDate;
    :goto_0
    return-object p0

    .line 754
    .restart local p0    # "this":Lorg/threeten/bp/chrono/HijrahDate;
    :cond_0
    iget v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    long-to-int v2, p1

    invoke-static {v1, v2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v0

    .line 755
    .local v0, "newYear":I
    iget-object v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->era:Lorg/threeten/bp/chrono/HijrahEra;

    iget v2, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v1, v0, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->of(Lorg/threeten/bp/chrono/HijrahEra;III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object p0

    goto :goto_0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 6
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    const-wide/16 v4, 0x1

    .line 628
    instance-of v1, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v1, :cond_1

    .line 629
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 630
    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 631
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoField;
    sget-object v1, Lorg/threeten/bp/chrono/HijrahDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 637
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/HijrahDate;->getChronology()Lorg/threeten/bp/chrono/HijrahChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/threeten/bp/chrono/HijrahChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    .line 641
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :goto_0
    return-object v1

    .line 632
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :pswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/HijrahDate;->lengthOfMonth()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v4, v5, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    goto :goto_0

    .line 633
    :pswitch_1
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/HijrahDate;->lengthOfYear()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v4, v5, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    goto :goto_0

    .line 634
    :pswitch_2
    const-wide/16 v2, 0x5

    invoke-static {v4, v5, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    goto :goto_0

    .line 635
    :pswitch_3
    const-wide/16 v2, 0x3e8

    invoke-static {v4, v5, v2, v3}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    goto :goto_0

    .line 639
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :cond_0
    new-instance v1, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 641
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    goto :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toEpochDay()J
    .locals 3

    .prologue
    .line 734
    iget v0, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    iget v1, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    iget v2, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v0, v1, v2}, Lorg/threeten/bp/chrono/HijrahDate;->getGregorianEpochDay(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 111
    invoke-super {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoDateImpl;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic until(Lorg/threeten/bp/chrono/ChronoLocalDate;)Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/chrono/ChronoLocalDate;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->until(Lorg/threeten/bp/chrono/ChronoLocalDate;)Lorg/threeten/bp/chrono/ChronoPeriod;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 1
    .param p1, "adjuster"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 669
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/HijrahDate;

    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/HijrahDate;
    .locals 6
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    const-wide/16 v4, 0x7

    .line 674
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 675
    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 676
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoField;
    invoke-virtual {v0, p2, p3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 677
    long-to-int v1, p2

    .line 678
    .local v1, "nvalue":I
    sget-object v2, Lorg/threeten/bp/chrono/HijrahDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 692
    new-instance v2, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/threeten/bp/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 679
    :pswitch_0
    iget-object v2, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfWeek:Lorg/threeten/bp/DayOfWeek;

    invoke-virtual {v2}, Lorg/threeten/bp/DayOfWeek;->getValue()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v2

    .line 694
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .end local v1    # "nvalue":I
    :goto_0
    return-object v2

    .line 680
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .restart local v1    # "nvalue":I
    :pswitch_1
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lorg/threeten/bp/chrono/HijrahDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v2

    goto :goto_0

    .line 681
    :pswitch_2
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lorg/threeten/bp/chrono/HijrahDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v2

    goto :goto_0

    .line 682
    :pswitch_3
    iget v2, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    iget v3, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    invoke-static {v2, v3, v1}, Lorg/threeten/bp/chrono/HijrahDate;->resolvePreviousValid(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v2

    goto :goto_0

    .line 683
    :pswitch_4
    iget v2, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    add-int/lit8 v3, v1, -0x1

    div-int/lit8 v3, v3, 0x1e

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v1, -0x1

    rem-int/lit8 v4, v4, 0x1e

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/threeten/bp/chrono/HijrahDate;->resolvePreviousValid(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v2

    goto :goto_0

    .line 684
    :pswitch_5
    new-instance v2, Lorg/threeten/bp/chrono/HijrahDate;

    int-to-long v4, v1

    invoke-direct {v2, v4, v5}, Lorg/threeten/bp/chrono/HijrahDate;-><init>(J)V

    goto :goto_0

    .line 685
    :pswitch_6
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lorg/threeten/bp/chrono/HijrahDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v2

    goto :goto_0

    .line 686
    :pswitch_7
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lorg/threeten/bp/chrono/HijrahDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    sub-long v2, p2, v2

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->plusDays(J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v2

    goto :goto_0

    .line 687
    :pswitch_8
    iget v2, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    iget v3, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v2, v1, v3}, Lorg/threeten/bp/chrono/HijrahDate;->resolvePreviousValid(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v2

    goto :goto_0

    .line 688
    :pswitch_9
    iget v2, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .end local v1    # "nvalue":I
    :goto_1
    iget v2, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->resolvePreviousValid(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v2

    goto :goto_0

    .restart local v1    # "nvalue":I
    :cond_0
    rsub-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 689
    :pswitch_a
    iget v2, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    iget v3, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v1, v2, v3}, Lorg/threeten/bp/chrono/HijrahDate;->resolvePreviousValid(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v2

    goto :goto_0

    .line 690
    :pswitch_b
    iget v2, p0, Lorg/threeten/bp/chrono/HijrahDate;->yearOfEra:I

    rsub-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/threeten/bp/chrono/HijrahDate;->monthOfYear:I

    iget v4, p0, Lorg/threeten/bp/chrono/HijrahDate;->dayOfMonth:I

    invoke-static {v2, v3, v4}, Lorg/threeten/bp/chrono/HijrahDate;->resolvePreviousValid(III)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v2

    goto/16 :goto_0

    .line 694
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .end local v1    # "nvalue":I
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/chrono/HijrahDate;

    goto/16 :goto_0

    .line 678
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/HijrahDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/HijrahDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/HijrahDate;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1764
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/HijrahDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1765
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/HijrahDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1766
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/HijrahDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1767
    return-void
.end method
