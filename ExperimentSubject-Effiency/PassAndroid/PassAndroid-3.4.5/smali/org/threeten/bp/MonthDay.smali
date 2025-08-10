.class public final Lorg/threeten/bp/MonthDay;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;
.source "MonthDay.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalAccessor;
.implements Lorg/threeten/bp/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/MonthDay$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;",
        "Lorg/threeten/bp/temporal/TemporalAccessor;",
        "Lorg/threeten/bp/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/threeten/bp/MonthDay;",
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
            "Lorg/threeten/bp/MonthDay;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARSER:Lorg/threeten/bp/format/DateTimeFormatter;

.field private static final serialVersionUID:J = -0xd0888991b3ac078L


# instance fields
.field private final day:I

.field private final month:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 97
    new-instance v0, Lorg/threeten/bp/MonthDay$1;

    invoke-direct {v0}, Lorg/threeten/bp/MonthDay$1;-><init>()V

    sput-object v0, Lorg/threeten/bp/MonthDay;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    .line 111
    new-instance v0, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendValue(Lorg/threeten/bp/temporal/TemporalField;I)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter()Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/MonthDay;->PARSER:Lorg/threeten/bp/format/DateTimeFormatter;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 291
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 292
    iput p1, p0, Lorg/threeten/bp/MonthDay;->month:I

    .line 293
    iput p2, p0, Lorg/threeten/bp/MonthDay;->day:I

    .line 294
    return-void
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/MonthDay;
    .locals 4
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 240
    instance-of v1, p0, Lorg/threeten/bp/MonthDay;

    if-eqz v1, :cond_0

    .line 241
    check-cast p0, Lorg/threeten/bp/MonthDay;

    .line 247
    .end local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :goto_0
    return-object p0

    .line 244
    .restart local p0    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_0
    :try_start_0
    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-static {p0}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/threeten/bp/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    .line 247
    :cond_1
    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v1}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v1

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p0, v2}, Lorg/threeten/bp/temporal/TemporalAccessor;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/threeten/bp/MonthDay;->of(II)Lorg/threeten/bp/MonthDay;
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "ex":Lorg/threeten/bp/DateTimeException;
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain MonthDay from TemporalAccessor: "

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
.end method

.method public static now()Lorg/threeten/bp/MonthDay;
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/MonthDay;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/MonthDay;
    .locals 3
    .param p0, "clock"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 170
    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 171
    .local v0, "now":Lorg/threeten/bp/LocalDate;
    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v1

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getDayOfMonth()I

    move-result v2

    invoke-static {v1, v2}, Lorg/threeten/bp/MonthDay;->of(Lorg/threeten/bp/Month;I)Lorg/threeten/bp/MonthDay;

    move-result-object v1

    return-object v1
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/MonthDay;
    .locals 1
    .param p0, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 156
    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/MonthDay;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static of(II)Lorg/threeten/bp/MonthDay;
    .locals 1
    .param p0, "month"    # I
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 218
    invoke-static {p0}, Lorg/threeten/bp/Month;->of(I)Lorg/threeten/bp/Month;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/threeten/bp/MonthDay;->of(Lorg/threeten/bp/Month;I)Lorg/threeten/bp/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/threeten/bp/Month;I)Lorg/threeten/bp/MonthDay;
    .locals 4
    .param p0, "month"    # Lorg/threeten/bp/Month;
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 192
    const-string v0, "month"

    invoke-static {p0, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/threeten/bp/temporal/ChronoField;->checkValidValue(J)J

    .line 194
    invoke-virtual {p0}, Lorg/threeten/bp/Month;->maxLength()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 195
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value for DayOfMonth field, value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid for month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/threeten/bp/Month;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    new-instance v0, Lorg/threeten/bp/MonthDay;

    invoke-virtual {p0}, Lorg/threeten/bp/Month;->getValue()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lorg/threeten/bp/MonthDay;-><init>(II)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/MonthDay;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 266
    sget-object v0, Lorg/threeten/bp/MonthDay;->PARSER:Lorg/threeten/bp/format/DateTimeFormatter;

    invoke-static {p0, v0}, Lorg/threeten/bp/MonthDay;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Lorg/threeten/bp/format/DateTimeFormatter;)Lorg/threeten/bp/MonthDay;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 280
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lorg/threeten/bp/MonthDay;->FROM:Lorg/threeten/bp/temporal/TemporalQuery;

    invoke-virtual {p1, p0, v0}, Lorg/threeten/bp/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/MonthDay;

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/MonthDay;
    .locals 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 743
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 744
    .local v1, "month":B
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 745
    .local v0, "day":B
    invoke-static {v1, v0}, Lorg/threeten/bp/MonthDay;->of(II)Lorg/threeten/bp/MonthDay;

    move-result-object v2

    return-object v2
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 734
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 725
    new-instance v0, Lorg/threeten/bp/Ser;

    const/16 v1, 0x40

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/temporal/Temporal;
    .locals 6
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 597
    invoke-static {p1}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Adjustment only supported on ISO date-time"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    iget v1, p0, Lorg/threeten/bp/MonthDay;->month:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object p1

    .line 601
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v1}, Lorg/threeten/bp/temporal/Temporal;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    iget v1, p0, Lorg/threeten/bp/MonthDay;->day:I

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public atYear(I)Lorg/threeten/bp/LocalDate;
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 620
    iget v1, p0, Lorg/threeten/bp/MonthDay;->month:I

    invoke-virtual {p0, p1}, Lorg/threeten/bp/MonthDay;->isValidYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/threeten/bp/MonthDay;->day:I

    :goto_0
    invoke-static {p1, v1, v0}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 90
    check-cast p1, Lorg/threeten/bp/MonthDay;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/threeten/bp/MonthDay;->compareTo(Lorg/threeten/bp/MonthDay;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/threeten/bp/MonthDay;)I
    .locals 3
    .param p1, "other"    # Lorg/threeten/bp/MonthDay;

    .prologue
    .line 634
    iget v1, p0, Lorg/threeten/bp/MonthDay;->month:I

    iget v2, p1, Lorg/threeten/bp/MonthDay;->month:I

    sub-int v0, v1, v2

    .line 635
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 636
    iget v1, p0, Lorg/threeten/bp/MonthDay;->day:I

    iget v2, p1, Lorg/threeten/bp/MonthDay;->day:I

    sub-int v0, v1, v2

    .line 638
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 672
    if-ne p0, p1, :cond_1

    .line 679
    :cond_0
    :goto_0
    return v1

    .line 675
    :cond_1
    instance-of v3, p1, Lorg/threeten/bp/MonthDay;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 676
    check-cast v0, Lorg/threeten/bp/MonthDay;

    .line 677
    .local v0, "other":Lorg/threeten/bp/MonthDay;
    iget v3, p0, Lorg/threeten/bp/MonthDay;->month:I

    iget v4, v0, Lorg/threeten/bp/MonthDay;->month:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/threeten/bp/MonthDay;->day:I

    iget v4, v0, Lorg/threeten/bp/MonthDay;->day:I

    if-eq v3, v4, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/threeten/bp/MonthDay;
    :cond_3
    move v1, v2

    .line 679
    goto :goto_0
.end method

.method public format(Lorg/threeten/bp/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 1
    .param p1, "formatter"    # Lorg/threeten/bp/format/DateTimeFormatter;

    .prologue
    .line 719
    const-string v0, "formatter"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 720
    invoke-virtual {p1, p0}, Lorg/threeten/bp/format/DateTimeFormatter;->format(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/threeten/bp/temporal/TemporalField;)I
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lorg/threeten/bp/MonthDay;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/threeten/bp/MonthDay;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lorg/threeten/bp/MonthDay;->day:I

    return v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 414
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 415
    sget-object v1, Lorg/threeten/bp/MonthDay$2;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 420
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

    .line 417
    :pswitch_0
    iget v0, p0, Lorg/threeten/bp/MonthDay;->day:I

    int-to-long v0, v0

    .line 422
    :goto_0
    return-wide v0

    .line 418
    :pswitch_1
    iget v0, p0, Lorg/threeten/bp/MonthDay;->month:I

    int-to-long v0, v0

    goto :goto_0

    .line 422
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    goto :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMonth()Lorg/threeten/bp/Month;
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lorg/threeten/bp/MonthDay;->month:I

    invoke-static {v0}, Lorg/threeten/bp/Month;->of(I)Lorg/threeten/bp/Month;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lorg/threeten/bp/MonthDay;->month:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 689
    iget v0, p0, Lorg/threeten/bp/MonthDay;->month:I

    shl-int/lit8 v0, v0, 0x6

    iget v1, p0, Lorg/threeten/bp/MonthDay;->day:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lorg/threeten/bp/MonthDay;)Z
    .locals 1
    .param p1, "other"    # Lorg/threeten/bp/MonthDay;

    .prologue
    .line 648
    invoke-virtual {p0, p1}, Lorg/threeten/bp/MonthDay;->compareTo(Lorg/threeten/bp/MonthDay;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBefore(Lorg/threeten/bp/MonthDay;)Z
    .locals 1
    .param p1, "other"    # Lorg/threeten/bp/MonthDay;

    .prologue
    .line 658
    invoke-virtual {p0, p1}, Lorg/threeten/bp/MonthDay;->compareTo(Lorg/threeten/bp/MonthDay;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 324
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 325
    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v2, :cond_0

    sget-object v2, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 327
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->isSupportedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public isValidYear(I)Z
    .locals 4
    .param p1, "year"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 478
    iget v2, p0, Lorg/threeten/bp/MonthDay;->day:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/threeten/bp/MonthDay;->month:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    int-to-long v2, p1

    invoke-static {v2, v3}, Lorg/threeten/bp/Year;->isLeap(J)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
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
    .line 562
    .local p1, "query":Lorg/threeten/bp/temporal/TemporalQuery;, "Lorg/threeten/bp/temporal/TemporalQuery<TR;>;"
    invoke-static {}, Lorg/threeten/bp/temporal/TemporalQueries;->chronology()Lorg/threeten/bp/temporal/TemporalQuery;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 563
    sget-object v0, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    .line 565
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->query(Lorg/threeten/bp/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 6
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 354
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 355
    invoke-interface {p1}, Lorg/threeten/bp/temporal/TemporalField;->range()Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    .line 356
    :cond_0
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 357
    const-wide/16 v0, 0x1

    invoke-virtual {p0}, Lorg/threeten/bp/MonthDay;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/Month;->minLength()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0}, Lorg/threeten/bp/MonthDay;->getMonth()Lorg/threeten/bp/Month;

    move-result-object v4

    invoke-virtual {v4}, Lorg/threeten/bp/Month;->maxLength()I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lorg/threeten/bp/temporal/ValueRange;->of(JJJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceTemporalAccessor;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lorg/threeten/bp/MonthDay;->month:I

    if-ge v0, v2, :cond_0

    const-string v0, "0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/threeten/bp/MonthDay;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lorg/threeten/bp/MonthDay;->day:I

    if-ge v0, v2, :cond_1

    const-string v0, "-0"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/threeten/bp/MonthDay;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "-"

    goto :goto_1
.end method

.method public with(Lorg/threeten/bp/Month;)Lorg/threeten/bp/MonthDay;
    .locals 3
    .param p1, "month"    # Lorg/threeten/bp/Month;

    .prologue
    .line 512
    const-string v1, "month"

    invoke-static {p1, v1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 513
    invoke-virtual {p1}, Lorg/threeten/bp/Month;->getValue()I

    move-result v1

    iget v2, p0, Lorg/threeten/bp/MonthDay;->month:I

    if-ne v1, v2, :cond_0

    .line 517
    .end local p0    # "this":Lorg/threeten/bp/MonthDay;
    :goto_0
    return-object p0

    .line 516
    .restart local p0    # "this":Lorg/threeten/bp/MonthDay;
    :cond_0
    iget v1, p0, Lorg/threeten/bp/MonthDay;->day:I

    invoke-virtual {p1}, Lorg/threeten/bp/Month;->maxLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 517
    .local v0, "day":I
    new-instance p0, Lorg/threeten/bp/MonthDay;

    .end local p0    # "this":Lorg/threeten/bp/MonthDay;
    invoke-virtual {p1}, Lorg/threeten/bp/Month;->getValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lorg/threeten/bp/MonthDay;-><init>(II)V

    goto :goto_0
.end method

.method public withDayOfMonth(I)Lorg/threeten/bp/MonthDay;
    .locals 1
    .param p1, "dayOfMonth"    # I

    .prologue
    .line 534
    iget v0, p0, Lorg/threeten/bp/MonthDay;->day:I

    if-ne p1, v0, :cond_0

    .line 537
    .end local p0    # "this":Lorg/threeten/bp/MonthDay;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/MonthDay;
    :cond_0
    iget v0, p0, Lorg/threeten/bp/MonthDay;->month:I

    invoke-static {v0, p1}, Lorg/threeten/bp/MonthDay;->of(II)Lorg/threeten/bp/MonthDay;

    move-result-object p0

    goto :goto_0
.end method

.method public withMonth(I)Lorg/threeten/bp/MonthDay;
    .locals 1
    .param p1, "month"    # I

    .prologue
    .line 496
    invoke-static {p1}, Lorg/threeten/bp/Month;->of(I)Lorg/threeten/bp/Month;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/MonthDay;->with(Lorg/threeten/bp/Month;)Lorg/threeten/bp/MonthDay;

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
    .line 738
    iget v0, p0, Lorg/threeten/bp/MonthDay;->month:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 739
    iget v0, p0, Lorg/threeten/bp/MonthDay;->day:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 740
    return-void
.end method
