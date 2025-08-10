.class public final Lorg/threeten/bp/chrono/JapaneseDate;
.super Lorg/threeten/bp/chrono/ChronoDateImpl;
.source "JapaneseDate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/chrono/JapaneseDate$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/threeten/bp/chrono/ChronoDateImpl",
        "<",
        "Lorg/threeten/bp/chrono/JapaneseDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final MIN_DATE:Lorg/threeten/bp/LocalDate;

.field private static final serialVersionUID:J = -0x43cbddbf9310f03L


# instance fields
.field private transient era:Lorg/threeten/bp/chrono/JapaneseEra;

.field private final isoDate:Lorg/threeten/bp/LocalDate;

.field private transient yearOfEra:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 95
    const/16 v0, 0x751

    invoke-static {v0, v1, v1}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/chrono/JapaneseDate;->MIN_DATE:Lorg/threeten/bp/LocalDate;

    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/LocalDate;)V
    .locals 3
    .param p1, "isoDate"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 282
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoDateImpl;-><init>()V

    .line 283
    sget-object v1, Lorg/threeten/bp/chrono/JapaneseDate;->MIN_DATE:Lorg/threeten/bp/LocalDate;

    invoke-virtual {p1, v1}, Lorg/threeten/bp/LocalDate;->isBefore(Lorg/threeten/bp/chrono/ChronoLocalDate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    const-string v2, "Minimum supported date is January 1st Meiji 6"

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_0
    invoke-static {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->from(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v1

    iput-object v1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->era:Lorg/threeten/bp/chrono/JapaneseEra;

    .line 287
    iget-object v1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->era:Lorg/threeten/bp/chrono/JapaneseEra;

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 288
    .local v0, "yearOffset":I
    invoke-virtual {p1}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->yearOfEra:I

    .line 289
    iput-object p1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    .line 290
    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/chrono/JapaneseEra;ILorg/threeten/bp/LocalDate;)V
    .locals 2
    .param p1, "era"    # Lorg/threeten/bp/chrono/JapaneseEra;
    .param p2, "year"    # I
    .param p3, "isoDate"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 300
    invoke-direct {p0}, Lorg/threeten/bp/chrono/ChronoDateImpl;-><init>()V

    .line 301
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseDate;->MIN_DATE:Lorg/threeten/bp/LocalDate;

    invoke-virtual {p3, v0}, Lorg/threeten/bp/LocalDate;->isBefore(Lorg/threeten/bp/chrono/ChronoLocalDate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    const-string v1, "Minimum supported date is January 1st Meiji 6"

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    iput-object p1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->era:Lorg/threeten/bp/chrono/JapaneseEra;

    .line 305
    iput p2, p0, Lorg/threeten/bp/chrono/JapaneseDate;->yearOfEra:I

    .line 306
    iput-object p3, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    .line 307
    return-void
.end method

.method private actualRange(I)Lorg/threeten/bp/temporal/ValueRange;
    .locals 6
    .param p1, "calendarField"    # I

    .prologue
    .line 406
    sget-object v1, Lorg/threeten/bp/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 407
    .local v0, "jcal":Ljava/util/Calendar;
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/threeten/bp/chrono/JapaneseDate;->era:Lorg/threeten/bp/chrono/JapaneseEra;

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/JapaneseEra;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 408
    iget v1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->yearOfEra:I

    iget-object v2, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v2}, Lorg/threeten/bp/LocalDate;->getMonthValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v3}, Lorg/threeten/bp/LocalDate;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 409
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    return-object v1
.end method

.method public static from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 273
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->INSTANCE:Lorg/threeten/bp/chrono/JapaneseChronology;

    invoke-virtual {v0, p0}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method private getDayOfYear()J
    .locals 2

    .prologue
    .line 435
    iget v0, p0, Lorg/threeten/bp/chrono/JapaneseDate;->yearOfEra:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 436
    iget-object v0, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->era:Lorg/threeten/bp/chrono/JapaneseEra;

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    .line 438
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static now()Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lorg/threeten/bp/Clock;->systemDefaultZone()Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/chrono/JapaneseDate;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 2
    .param p0, "clock"    # Lorg/threeten/bp/Clock;

    .prologue
    .line 155
    new-instance v0, Lorg/threeten/bp/chrono/JapaneseDate;

    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/chrono/JapaneseDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public static now(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1
    .param p0, "zone"    # Lorg/threeten/bp/ZoneId;

    .prologue
    .line 140
    invoke-static {p0}, Lorg/threeten/bp/Clock;->system(Lorg/threeten/bp/ZoneId;)Lorg/threeten/bp/Clock;

    move-result-object v0

    invoke-static {v0}, Lorg/threeten/bp/chrono/JapaneseDate;->now(Lorg/threeten/bp/Clock;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static of(III)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 2
    .param p0, "prolepticYear"    # I
    .param p1, "month"    # I
    .param p2, "dayOfMonth"    # I

    .prologue
    .line 252
    new-instance v0, Lorg/threeten/bp/chrono/JapaneseDate;

    invoke-static {p0, p1, p2}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/chrono/JapaneseDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    return-object v0
.end method

.method public static of(Lorg/threeten/bp/chrono/JapaneseEra;III)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 7
    .param p0, "era"    # Lorg/threeten/bp/chrono/JapaneseEra;
    .param p1, "yearOfEra"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 184
    const-string v4, "era"

    invoke-static {p0, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    const/4 v4, 0x1

    if-ge p1, v4, :cond_0

    .line 186
    new-instance v4, Lorg/threeten/bp/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid YearOfEra: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 188
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v2

    .line 189
    .local v2, "eraStartDate":Lorg/threeten/bp/LocalDate;
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/JapaneseEra;->endDate()Lorg/threeten/bp/LocalDate;

    move-result-object v1

    .line 190
    .local v1, "eraEndDate":Lorg/threeten/bp/LocalDate;
    invoke-virtual {v2}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 191
    .local v3, "yearOffset":I
    add-int v4, p1, v3

    invoke-static {v4, p2, p3}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 192
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    invoke-virtual {v0, v2}, Lorg/threeten/bp/LocalDate;->isBefore(Lorg/threeten/bp/chrono/ChronoLocalDate;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v1}, Lorg/threeten/bp/LocalDate;->isAfter(Lorg/threeten/bp/chrono/ChronoLocalDate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    :cond_1
    new-instance v4, Lorg/threeten/bp/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested date is outside bounds of era "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 195
    :cond_2
    new-instance v4, Lorg/threeten/bp/chrono/JapaneseDate;

    invoke-direct {v4, p0, p1, v0}, Lorg/threeten/bp/chrono/JapaneseDate;-><init>(Lorg/threeten/bp/chrono/JapaneseEra;ILorg/threeten/bp/LocalDate;)V

    return-object v4
.end method

.method static ofYearDay(Lorg/threeten/bp/chrono/JapaneseEra;II)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 7
    .param p0, "era"    # Lorg/threeten/bp/chrono/JapaneseEra;
    .param p1, "yearOfEra"    # I
    .param p2, "dayOfYear"    # I

    .prologue
    const/4 v5, 0x1

    .line 214
    const-string v4, "era"

    invoke-static {p0, v4}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    if-ge p1, v5, :cond_0

    .line 216
    new-instance v4, Lorg/threeten/bp/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid YearOfEra: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 218
    :cond_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v1

    .line 219
    .local v1, "eraStartDate":Lorg/threeten/bp/LocalDate;
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/JapaneseEra;->endDate()Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 220
    .local v0, "eraEndDate":Lorg/threeten/bp/LocalDate;
    if-ne p1, v5, :cond_1

    .line 221
    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/2addr p2, v4

    .line 222
    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->lengthOfYear()I

    move-result v4

    if-le p2, v4, :cond_1

    .line 223
    new-instance v4, Lorg/threeten/bp/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DayOfYear exceeds maximum allowed in the first year of era "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 226
    :cond_1
    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 227
    .local v3, "yearOffset":I
    add-int v4, p1, v3

    invoke-static {v4, p2}, Lorg/threeten/bp/LocalDate;->ofYearDay(II)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    .line 228
    .local v2, "isoDate":Lorg/threeten/bp/LocalDate;
    invoke-virtual {v2, v1}, Lorg/threeten/bp/LocalDate;->isBefore(Lorg/threeten/bp/chrono/ChronoLocalDate;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2, v0}, Lorg/threeten/bp/LocalDate;->isAfter(Lorg/threeten/bp/chrono/ChronoLocalDate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 229
    :cond_2
    new-instance v4, Lorg/threeten/bp/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested date is outside bounds of era "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 231
    :cond_3
    new-instance v4, Lorg/threeten/bp/chrono/JapaneseDate;

    invoke-direct {v4, p0, p1, v2}, Lorg/threeten/bp/chrono/JapaneseDate;-><init>(Lorg/threeten/bp/chrono/JapaneseEra;ILorg/threeten/bp/LocalDate;)V

    return-object v4
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
    .line 600
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 601
    .local v2, "year":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 602
    .local v1, "month":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 603
    .local v0, "dayOfMonth":I
    sget-object v3, Lorg/threeten/bp/chrono/JapaneseChronology;->INSTANCE:Lorg/threeten/bp/chrono/JapaneseChronology;

    invoke-virtual {v3, v2, v1, v0}, Lorg/threeten/bp/chrono/JapaneseChronology;->date(III)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 316
    iget-object v1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-static {v1}, Lorg/threeten/bp/chrono/JapaneseEra;->from(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v1

    iput-object v1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->era:Lorg/threeten/bp/chrono/JapaneseEra;

    .line 317
    iget-object v1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->era:Lorg/threeten/bp/chrono/JapaneseEra;

    invoke-virtual {v1}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 318
    .local v0, "yearOffset":I
    iget-object v1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->yearOfEra:I

    .line 319
    return-void
.end method

.method private with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1
    .param p1, "newDate"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 549
    iget-object v0, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lorg/threeten/bp/chrono/JapaneseDate;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/threeten/bp/chrono/JapaneseDate;
    :cond_0
    new-instance p0, Lorg/threeten/bp/chrono/JapaneseDate;

    .end local p0    # "this":Lorg/threeten/bp/chrono/JapaneseDate;
    invoke-direct {p0, p1}, Lorg/threeten/bp/chrono/JapaneseDate;-><init>(Lorg/threeten/bp/LocalDate;)V

    goto :goto_0
.end method

.method private withYear(I)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 529
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/JapaneseDate;->getEra()Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/threeten/bp/chrono/JapaneseDate;->withYear(Lorg/threeten/bp/chrono/JapaneseEra;I)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method private withYear(Lorg/threeten/bp/chrono/JapaneseEra;I)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 2
    .param p1, "era"    # Lorg/threeten/bp/chrono/JapaneseEra;
    .param p2, "yearOfEra"    # I

    .prologue
    .line 511
    sget-object v1, Lorg/threeten/bp/chrono/JapaneseChronology;->INSTANCE:Lorg/threeten/bp/chrono/JapaneseChronology;

    invoke-virtual {v1, p1, p2}, Lorg/threeten/bp/chrono/JapaneseChronology;->prolepticYear(Lorg/threeten/bp/chrono/Era;I)I

    move-result v0

    .line 512
    .local v0, "year":I
    iget-object v1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1, v0}, Lorg/threeten/bp/LocalDate;->withYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v1

    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 589
    new-instance v0, Lorg/threeten/bp/chrono/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
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
            "Lorg/threeten/bp/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->atTime(Lorg/threeten/bp/LocalTime;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 572
    if-ne p0, p1, :cond_0

    .line 573
    const/4 v1, 0x1

    .line 579
    :goto_0
    return v1

    .line 575
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/chrono/JapaneseDate;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 576
    check-cast v0, Lorg/threeten/bp/chrono/JapaneseDate;

    .line 577
    .local v0, "otherDate":Lorg/threeten/bp/chrono/JapaneseDate;
    iget-object v1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    iget-object v2, v0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1, v2}, Lorg/threeten/bp/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 579
    .end local v0    # "otherDate":Lorg/threeten/bp/chrono/JapaneseDate;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getChronology()Lorg/threeten/bp/chrono/Chronology;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/JapaneseDate;->getChronology()Lorg/threeten/bp/chrono/JapaneseChronology;

    move-result-object v0

    return-object v0
.end method

.method public getChronology()Lorg/threeten/bp/chrono/JapaneseChronology;
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->INSTANCE:Lorg/threeten/bp/chrono/JapaneseChronology;

    return-object v0
.end method

.method public bridge synthetic getEra()Lorg/threeten/bp/chrono/Era;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/JapaneseDate;->getEra()Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v0

    return-object v0
.end method

.method public getEra()Lorg/threeten/bp/chrono/JapaneseEra;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/threeten/bp/chrono/JapaneseDate;->era:Lorg/threeten/bp/chrono/JapaneseEra;

    return-object v0
.end method

.method public getLong(Lorg/threeten/bp/temporal/TemporalField;)J
    .locals 3
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 415
    instance-of v0, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v0, :cond_0

    .line 416
    sget-object v1, Lorg/threeten/bp/chrono/JapaneseDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    move-object v0, p1

    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 429
    iget-object v0, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1}, Lorg/threeten/bp/LocalDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    .line 431
    :goto_0
    return-wide v0

    .line 421
    :pswitch_0
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

    .line 423
    :pswitch_1
    iget v0, p0, Lorg/threeten/bp/chrono/JapaneseDate;->yearOfEra:I

    int-to-long v0, v0

    goto :goto_0

    .line 425
    :pswitch_2
    iget-object v0, p0, Lorg/threeten/bp/chrono/JapaneseDate;->era:Lorg/threeten/bp/chrono/JapaneseEra;

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/JapaneseEra;->getValue()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 427
    :pswitch_3
    invoke-direct {p0}, Lorg/threeten/bp/chrono/JapaneseDate;->getDayOfYear()J

    move-result-wide v0

    goto :goto_0

    .line 431
    :cond_0
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->getFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)J

    move-result-wide v0

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 584
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/JapaneseDate;->getChronology()Lorg/threeten/bp/chrono/JapaneseChronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/chrono/JapaneseChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1}, Lorg/threeten/bp/LocalDate;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z
    .locals 1
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 378
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 382
    :cond_0
    const/4 v0, 0x0

    .line 384
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    goto :goto_0
.end method

.method public lengthOfMonth()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->lengthOfMonth()I

    move-result v0

    return v0
.end method

.method public lengthOfYear()I
    .locals 4

    .prologue
    .line 339
    sget-object v1, Lorg/threeten/bp/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 340
    .local v0, "jcal":Ljava/util/Calendar;
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/threeten/bp/chrono/JapaneseDate;->era:Lorg/threeten/bp/chrono/JapaneseEra;

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/JapaneseEra;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 341
    iget v1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->yearOfEra:I

    iget-object v2, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v2}, Lorg/threeten/bp/LocalDate;->getMonthValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v3}, Lorg/threeten/bp/LocalDate;->getDayOfMonth()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 342
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    return v1
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/JapaneseDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseDate;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 492
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/JapaneseDate;

    return-object v0
.end method

.method public minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 487
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/JapaneseDate;

    return-object v0
.end method

.method public bridge synthetic minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/JapaneseDate;->minus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseDate;->minus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1
    .param p1, "amountToAdd"    # J
    .param p3, "unit"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 482
    invoke-super {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/ChronoDateImpl;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/JapaneseDate;

    return-object v0
.end method

.method public plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1
    .param p1, "amount"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 477
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/JapaneseDate;

    return-object v0
.end method

.method public bridge synthetic plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAmount;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseDate;->plus(Lorg/threeten/bp/temporal/TemporalAmount;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusDays(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/JapaneseDate;->plusDays(J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method plusDays(J)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1
    .param p1, "days"    # J

    .prologue
    .line 545
    iget-object v0, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/chrono/JapaneseDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusMonths(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/JapaneseDate;->plusMonths(J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method plusMonths(J)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1
    .param p1, "months"    # J

    .prologue
    .line 540
    iget-object v0, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusMonths(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/chrono/JapaneseDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic plusYears(J)Lorg/threeten/bp/chrono/ChronoDateImpl;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lorg/threeten/bp/chrono/JapaneseDate;->plusYears(J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method plusYears(J)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1
    .param p1, "years"    # J

    .prologue
    .line 535
    iget-object v0, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0, p1, p2}, Lorg/threeten/bp/LocalDate;->plusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/threeten/bp/chrono/JapaneseDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 4
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 389
    instance-of v1, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v1, :cond_1

    .line 390
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseDate;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 391
    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 392
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoField;
    sget-object v1, Lorg/threeten/bp/chrono/JapaneseDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 398
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/JapaneseDate;->getChronology()Lorg/threeten/bp/chrono/JapaneseChronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    .line 402
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :goto_0
    return-object v1

    .line 394
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    :pswitch_0
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->actualRange(I)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    goto :goto_0

    .line 396
    :pswitch_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->actualRange(I)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    goto :goto_0

    .line 400
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

    .line 402
    :cond_1
    invoke-interface {p1, p0}, Lorg/threeten/bp/temporal/TemporalField;->rangeRefinedBy(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toEpochDay()J
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "x1"    # Lorg/threeten/bp/temporal/TemporalUnit;

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lorg/threeten/bp/chrono/ChronoDateImpl;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public until(Lorg/threeten/bp/chrono/ChronoLocalDate;)Lorg/threeten/bp/chrono/ChronoPeriod;
    .locals 5
    .param p1, "endDate"    # Lorg/threeten/bp/chrono/ChronoLocalDate;

    .prologue
    .line 560
    iget-object v1, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/LocalDate;->until(Lorg/threeten/bp/chrono/ChronoLocalDate;)Lorg/threeten/bp/Period;

    move-result-object v0

    .line 561
    .local v0, "period":Lorg/threeten/bp/Period;
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/JapaneseDate;->getChronology()Lorg/threeten/bp/chrono/JapaneseChronology;

    move-result-object v1

    invoke-virtual {v0}, Lorg/threeten/bp/Period;->getYears()I

    move-result v2

    invoke-virtual {v0}, Lorg/threeten/bp/Period;->getMonths()I

    move-result v3

    invoke-virtual {v0}, Lorg/threeten/bp/Period;->getDays()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/threeten/bp/chrono/JapaneseChronology;->period(III)Lorg/threeten/bp/chrono/ChronoPeriod;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/ChronoLocalDate;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/JapaneseDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 1
    .param p1, "adjuster"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 444
    invoke-super {p0, p1}, Lorg/threeten/bp/chrono/ChronoDateImpl;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/chrono/JapaneseDate;

    return-object v0
.end method

.method public with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/JapaneseDate;
    .locals 8
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "newValue"    # J

    .prologue
    .line 449
    instance-of v2, p1, Lorg/threeten/bp/temporal/ChronoField;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 450
    check-cast v0, Lorg/threeten/bp/temporal/ChronoField;

    .line 451
    .local v0, "f":Lorg/threeten/bp/temporal/ChronoField;
    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/JapaneseDate;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 472
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .end local p0    # "this":Lorg/threeten/bp/chrono/JapaneseDate;
    :goto_0
    return-object p0

    .line 454
    .restart local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .restart local p0    # "this":Lorg/threeten/bp/chrono/JapaneseDate;
    :cond_0
    sget-object v2, Lorg/threeten/bp/chrono/JapaneseDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 470
    :goto_1
    iget-object v2, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    invoke-virtual {v2, p1, p2, p3}, Lorg/threeten/bp/LocalDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/threeten/bp/chrono/JapaneseDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p0

    goto :goto_0

    .line 458
    :sswitch_0
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/JapaneseDate;->getChronology()Lorg/threeten/bp/chrono/JapaneseChronology;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v0}, Lorg/threeten/bp/temporal/ValueRange;->checkValidIntValue(JLorg/threeten/bp/temporal/TemporalField;)I

    move-result v1

    .line 459
    .local v1, "nvalue":I
    sget-object v2, Lorg/threeten/bp/chrono/JapaneseDate$1;->$SwitchMap$org$threeten$bp$temporal$ChronoField:[I

    invoke-virtual {v0}, Lorg/threeten/bp/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_1

    goto :goto_1

    .line 461
    :sswitch_1
    iget-object v2, p0, Lorg/threeten/bp/chrono/JapaneseDate;->isoDate:Lorg/threeten/bp/LocalDate;

    int-to-long v4, v1

    invoke-direct {p0}, Lorg/threeten/bp/chrono/JapaneseDate;->getDayOfYear()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lorg/threeten/bp/LocalDate;->plusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/threeten/bp/chrono/JapaneseDate;->with(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p0

    goto :goto_0

    .line 463
    :sswitch_2
    invoke-direct {p0, v1}, Lorg/threeten/bp/chrono/JapaneseDate;->withYear(I)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p0

    goto :goto_0

    .line 465
    :sswitch_3
    invoke-static {v1}, Lorg/threeten/bp/chrono/JapaneseEra;->of(I)Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v2

    iget v3, p0, Lorg/threeten/bp/chrono/JapaneseDate;->yearOfEra:I

    invoke-direct {p0, v2, v3}, Lorg/threeten/bp/chrono/JapaneseDate;->withYear(Lorg/threeten/bp/chrono/JapaneseEra;I)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object p0

    goto :goto_0

    .line 472
    .end local v0    # "f":Lorg/threeten/bp/temporal/ChronoField;
    .end local v1    # "nvalue":I
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lorg/threeten/bp/temporal/TemporalField;->adjustInto(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/chrono/JapaneseDate;

    move-object p0, v2

    goto :goto_0

    .line 454
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch

    .line 459
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x7 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/temporal/Temporal;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAdjuster;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lorg/threeten/bp/chrono/JapaneseDate;->with(Lorg/threeten/bp/temporal/TemporalAdjuster;)Lorg/threeten/bp/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalField;
    .param p2, "x1"    # J

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lorg/threeten/bp/chrono/JapaneseDate;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/chrono/JapaneseDate;

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
    .line 594
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/JapaneseDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 595
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->MONTH_OF_YEAR:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/JapaneseDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 596
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->DAY_OF_MONTH:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/chrono/JapaneseDate;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 597
    return-void
.end method
